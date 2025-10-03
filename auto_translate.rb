# frozen_string_literal: true
# Jekyll Auto Translate (virtual pages)
# Creates translated "post pages" at build time without new source files.
# Provider: LibreTranslate (default) or DeepL (via ENV).

require "jekyll"
require "net/http"
require "uri"
require "json"

module AutoTranslate
  MASK_REGEX = /(```[\s\S]*?```|\{%[\s\S]*?%}|\{\{[\s\S]*?\}\})/m

  class Generator < Jekyll::Generator
    safe false
    priority :low

    def generate(site)
      # Gate: only run if explicitly enabled
      return unless env_enabled?

      cfg = site.config["i18n"] || {}
      src_lang = (cfg["source_lang"] || "en").to_s
      langs    = Array(cfg["languages"] || ["hi"]).map(&:to_s).uniq - [src_lang]
      return if langs.empty?

      posts = site.posts.docs.select { |d| post_lang(site, d, src_lang) }

      posts.each do |doc|
        langs.each do |dst|
          create_translation_page(site, doc, src_lang, dst, cfg)
        end
      end
    end

    private

    def env_enabled?
      v = ENV["I18N_ENABLED"] || ENV["JEKYLL_I18N"]
      v && %w[1 true yes on].include?(v.downcase)
    end

    def post_lang(site, doc, src_lang)
      # Use front matter lang, or path convention /_posts/en/
      lang = (doc.data["lang"] || lang_from_path(doc.path) || site.config["lang"] || "en").to_s
      lang.downcase == src_lang.downcase
    end

    def lang_from_path(path)
      # matches .../_posts/<lang>/...
      if path =~ %r{/_posts/([^/]+)/}
        Regexp.last_match(1)
      end
    end

    def stable_key(doc)
      k = doc.data["translation_key"]
      return k unless k.to_s.strip.empty?
      base = (doc.data["slug"] || doc.data["title"] || File.basename(doc.basename, ".*")).to_s
      base.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/^-+|-+$/, "")
    end

    def create_translation_page(site, doc, src_lang, dst_lang, cfg)
      key = stable_key(doc)

      # Build translated front matter
      data = doc.data.dup
      data["lang"] = dst_lang
      data["translation_key"] = key

      # title/description translate
      data["title"] = translate_str(data["title"], dst_lang) if data["title"]
      data["description"] = translate_str(data["description"], dst_lang) if data["description"]

      # Body translate with masking
      body = translate_body(doc.content, dst_lang)

      # Build output path & URL
      categories = Array(doc.data["categories"]).map(&:to_s)
      slug = (doc.data["slug"] || File.basename(doc.basename, ".*")).to_s
      permalink_tpl = (site.config["permalink"] || "/:lang/:categories/:title/")
      url = build_url(permalink_tpl, dst_lang, categories, slug, doc)

      page = Jekyll::PageWithoutAFile.new(site, site.source, "", "")
      page.content = body
      page.data = data
      page.data["layout"] ||= "post"
      page.data["permalink"] = url

      # Hreflang alternates (for head include usage)
      page.data["alternates"] = [
        { "lang" => src_lang, "url" => absolute_url(site, doc.url) },
      ]

      site.pages << page
    rescue => e
      Jekyll.logger.warn "AutoTranslate:", "failed for #{doc.path} -> #{dst_lang} (#{e.class}) #{e.message}"
    end

    def build_url(template, lang, categories, slug, doc)
      cats = categories.join("/")
      title = slug
      date = doc.date

      url = template.dup
      url = url.gsub(":lang", lang)
               .gsub(":categories", cats)
               .gsub(":title", title)
               .gsub(":slug", slug)
               .gsub(":year", date.strftime("%Y"))
               .gsub(":month", date.strftime("%m"))
               .gsub(":day", date.strftime("%d"))
      # ensure leading/trailing slashes nice
      url = "/" + url unless url.start_with?("/")
      url = url.end_with?("/") ? url : (url + "/")
      url
    end

    def absolute_url(site, path)
      u = site.config["url"].to_s.sub(%r{\/+$}, "")
      b = site.config["baseurl"].to_s
      [u, b, path].join
    end

    # ---------- Translation plumbing ----------

    def translate_body(text, dst_lang)
      tokens = []
      masked = text.gsub(MASK_REGEX) do |m|
        id = "@@T#{tokens.length}@@"
        tokens << m
        id
      end

      # Chunk by blank lines to keep structure sane
      chunks = masked.split(/\n{2,}/)

      translated_chunks = chunks.map do |ch|
        t = ch.strip
        if t.empty? || t =~ /\A@@T\d+@@\z/
          ch
        else
          translate_str(ch, dst_lang)
        end
      end

      out = translated_chunks.join("\n\n")
      tokens.each_with_index { |tok, i| out = out.gsub("@@T#{i}@@", tok) }
      out
    end

    def translate_str(s, dst_lang)
      provider = (ENV["I18N_PROVIDER"] || "libre").downcase
      case provider
      when "deepl"  then deepl_translate(s, dst_lang)
      when "libre"  then libre_translate(s, dst_lang)
      else
        raise "Unsupported I18N_PROVIDER=#{provider} (use 'libre' or 'deepl')"
      end
    end

    # --- LibreTranslate (self-host OR public) ---
    # ENV:
    #   LT_URL (default: https://libretranslate.com/translate)
    #   LT_KEY (optional)
    #   SRC_LANG assumed auto; dst_lang example: "hi"
    def libre_translate(s, dst_lang)
      url = ENV["LT_URL"] || "https://libretranslate.com/translate"
      uri = URI.parse(url)
      req = Net::HTTP::Post.new(uri)
      req["Content-Type"] = "application/json"
      payload = {
        q: s,
        source: "auto",
        target: dst_lang,
        format: "text"
      }
      token = ENV["LT_KEY"]
      payload[:api_key] = token if token && !token.empty?
      req.body = JSON.dump(payload)

      res = http_request(uri, req)
      json = JSON.parse(res.body) rescue {}
      json["translatedText"] || s
    end

    # --- DeepL ---
    # ENV:
    #   DEEPL_API_KEY (required)
    #   dst_lang like "HI" / "FR". We uppercase it.
    def deepl_translate(s, dst_lang)
      key = ENV["DEEPL_API_KEY"]
      raise "DEEPL_API_KEY missing" if key.to_s.strip.empty?

      uri = URI.parse("https://api-free.deepl.com/v2/translate")
      req = Net::HTTP::Post.new(uri)
      req.set_form_data({
        "auth_key" => key,
        "text" => s,
        "target_lang" => dst_lang.upcase
      })

      res = http_request(uri, req)
      json = JSON.parse(res.body) rescue {}
      arr = json["translations"]
      if arr && arr[0] && arr[0]["text"]
        arr[0]["text"]
      else
        s
      end
    end

    def http_request(uri, req)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == "https")
      http.read_timeout = 60
      res = http.request(req)
      unless res.is_a?(Net::HTTPSuccess)
        raise "HTTP #{res.code}: #{res.body&.slice(0, 200)}"
      end
      res
    end
  end
end
