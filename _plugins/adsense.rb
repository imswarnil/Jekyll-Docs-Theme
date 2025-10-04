# _plugins/adsense.rb
module Jekyll
  class AdSenseTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @raw_text = text
    end

    def render(context)
      # Parse the type argument from the tag, e.g., type:"skyscraper_large"
      if @raw_text =~ /type:"([^"]+)"/
        @type = $1.strip
      else
        return "<!-- Adsense Tag Error: 'type' parameter is missing. -->"
      end

      # Get site configuration
      site_config = context.registers[:site].config
      adsense_config = site_config['adsense']

      # 1. Check if ads are enabled globally
      return '' unless adsense_config && adsense_config['enabled']

      publisher_id = adsense_config['publisher_id']
      ad_data = adsense_config['slots'][@type]

      # 2. Check if the specific ad type exists in the config
      return "<!-- Adsense Tag Error: Ad type '#{@type}' not found in _config.yml. -->" unless ad_data

      slot_id = ad_data['slot']
      format = ad_data['format']

      # 3. Build the correct <ins> tag based on the format
      ins_tag = case format
      when 'display'
        "<ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"#{publisher_id}\" data-ad-slot=\"#{slot_id}\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins>"
      when 'article'
        "<ins class=\"adsbygoogle\" style=\"display:block; text-align:center;\" data-ad-layout=\"in-article\" data-ad-format=\"fluid\" data-ad-client=\"#{publisher_id}\" data-ad-slot=\"#{slot_id}\"></ins>"
      when 'feed'
        "<ins class=\"adsbygoogle\" style=\"display:block\" data-ad-format=\"fluid\" data-ad-layout-key=\"-6v+f0-19-44+c6\" data-ad-client=\"#{publisher_id}\" data-ad-slot=\"#{slot_id}\"></ins>"
      when 'multiplex'
        "<ins class=\"adsbygoogle\" style=\"display:block\" data-ad-format=\"autorelaxed\" data-ad-client=\"#{publisher_id}\" data-ad-slot=\"#{slot_id}\"></ins>"
      else
        "<!-- Adsense Tag Error: Unknown format '#{format}' for ad type '#{@type}'. -->"
      end

      # 4. Wrap the <ins> tag in our styled container for lazy loading
      "<div class=\"ad ad--#{@type}\" data-lazy-ad>#{ins_tag}</div>"
    end
  end
end

Liquid::Template.register_tag('adsense', Jekyll::AdSenseTag)