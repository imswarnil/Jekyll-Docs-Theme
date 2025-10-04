# frozen_string_literal: true

module Jekyll
  class AdsenseTag < Liquid::Tag
    SLOT_MAP = {
      "leaderboard" => "4774277934",
      "rectangle"   => "9619442326",
      "square"      => "6066270853",
      "skyscraper"  => "2712169578",
      "article"     => "6501428979",
      "feed"        => "9130894804",
      "multiplex"   => "3375031396",
      "auto"        => "4774277934"
    }.freeze

    def initialize(tag_name, markup, tokens)
      super
      @opts = {}
      markup.to_s.scan(/(\w+)\s*:\s*("(?:[^"]+)"|'(?:[^']+)'|[^\s]+)/).each do |k, v|
        v = v.to_s.strip.sub(/\A['"]/, "").sub(/['"]\z/, "")
        @opts[k] = v
      end
    end

    def render(context)
      site        = context.registers[:site]
      env         = (site.config["jekyll_environment"] || ENV["JEKYLL_ENV"] || "").downcase
      production  = env == "production"

      type       = fetch_opt("type", "auto")
      size       = fetch_opt("size", "md")
      extra      = @opts["class"].to_s
      layout_key = @opts["layout_key"] || "-6v+f0-19-44+c6"
      client     = @opts["client"] || "ca-pub-1291242080282540"
      slot       = SLOT_MAP[type] || SLOT_MAP["auto"]

      # Dev placeholder (prevents pushing ads locally)
      unless production
        return %(<div class="ad ad--#{type} ad--#{size} #{extra}"><span class="ad__label">Advertisement</span><div class="adsbygoogle" style="height:120px"></div></div>)
      end

      ins_attrs =
        case type
        when "article"
          %(data-ad-format="fluid" data-ad-layout="in-article" data-full-width-responsive="true")
        when "feed"
          %(data-ad-format="fluid" data-ad-layout="in-feed" data-ad-layout-key="#{layout_key}")
        when "multiplex"
          %(data-ad-format="autorelaxed")
        else
          %(data-ad-format="auto" data-full-width-responsive="true")
        end

      <<~HTML
        <div class="ad ad--#{type} ad--#{size} #{extra}">
          <span class="ad__label" aria-label="Advertisement">Advertisement</span>
          <ins class="adsbygoogle"
               data-ad-client="#{client}"
               data-ad-slot="#{slot}"
               #{ins_attrs}></ins>
        </div>
        <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
      HTML
    end

    private

    def fetch_opt(key, default)
      (@opts[key] || default).to_s.downcase
    end
  end
end

Liquid::Template.register_tag("adsense", Jekyll::AdsenseTag)
