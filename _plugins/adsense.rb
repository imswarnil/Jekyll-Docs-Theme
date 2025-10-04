# frozen_string_literal: true
# Usage:
#   {% adsense type:leaderboard size:lg class:my-mx layout_key:-6v+f0-19-44+c6 %}
# Types: leaderboard | rectangle | square | skyscraper | article | feed | multiplex | auto
# Sizes: lg | md | sm   (caps container width only; Google controls the creative)

module Jekyll
  class AdsenseTag < Liquid::Tag
    SLOT_MAP = {
      "leaderboard" => "4774277934", # Responsive_Leaderboard
      "rectangle"   => "9619442326", # Medium Rectangle
      "square"      => "6066270853", # Small Square
      "skyscraper"  => "2712169578", # Medium Skyscraper
      "article"     => "6501428979", # In-article
      "feed"        => "9130894804", # In-feed
      "multiplex"   => "3375031396", # Multiplex (auto-relaxed)
      "auto"        => "4774277934"
    }.freeze

    def initialize(tag_name, markup, tokens)
      super
      @opts = {}
      markup.scan(/(\w+)\s*:\s*("(?:[^"]+)"|'(?:[^']+)'|[^\s]+)/).each do |k, v|
        v = v.to_s.strip.sub(/\A['"]/, "").sub(/['"]\z/, "")
        @opts[k] = v
      end
    end

    def render(_context)
      type       = (@opts["type"] || "auto").downcase
      size       = (@opts["size"] || "md").downcase
      extra      = @opts["class"] || ""
      layout_key = @opts["layout_key"] || "-6v+f0-19-44+c6" # feed default
      client     = @opts["client"] || "ca-pub-1291242080282540"
      slot       = SLOT_MAP[type] || SLOT_MAP["auto"]

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
  end
end

Liquid::Template.register_tag("adsense", Jekyll::AdsenseTag)
