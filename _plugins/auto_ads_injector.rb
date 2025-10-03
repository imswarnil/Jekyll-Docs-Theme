# _plugins/auto_ads_injector.rb
require 'nokogiri'

module Jekyll
  class AutoAdsInjector
    # Method to generate the full HTML for an ad unit.
    # It mirrors the logic from your adsense.html include.
    def self.generate_ad_html(type, site_config)
      # Central ad unit definitions
      ad_units = {
        "in-article"             => { slot: "6501428979", format: "fluid", layout: "in-article" },
        "responsive-leaderboard" => { slot: "4774277934", format: "auto", layout: nil },
        "medium-square"          => { slot: "9619442326", format: "auto", layout: nil },
        # You can add more predefined types here for the plugin to use
      }

      ad_info = ad_units[type]
      return "" unless ad_info # Return empty if type is not defined

      publisher_id = site_config['adsense']['publisher_id']
      slot_id = ad_info[:slot]

      # Base HTML structure for the ad container
      container_html = %(
        <div class="crma-ad-container crma-ad-lazy-load" data-ad-slot="#{slot_id}" data-ad-format="#{ad_info[:format]}" data-ad-layout="#{ad_info[:layout]}">
          <div class="crma-ad-label">Advertisement</div>
          <div class="crma-ad-unit-placeholder"></div>
        </div>
      )
      
      container_html
    end

    # Main generator logic
    Jekyll::Hooks.register [:posts, :pages], :post_render do |doc|
      # Check if the plugin is enabled in _config.yml
      if doc.site.config['auto_ads'] && doc.site.config['auto_ads']['enabled']
        config = doc.site.config['auto_ads']
        
        # Only run on specified layouts
        if config['layouts'].include?(doc.data['layout'])
          
          # Use Nokogiri to parse the rendered HTML content
          doc.output = Nokogiri::HTML.fragment(doc.output).tap do |html|
            
            # Find all direct child paragraphs of the first <article> tag
            paragraphs = html.css('article > p')
            
            # Check if there are enough paragraphs to inject ads
            if paragraphs.count >= config['start_after']
              
              start_at = config['start_after']
              density = config['density']
              ad_type = config['ad_type']
              
              ad_html_to_inject = generate_ad_html(ad_type, doc.site.config)
              
              # Iterate and inject ads after specific paragraphs
              paragraphs.each_with_index do |p, i|
                # Injections start after 'start_at' and repeat every 'density' paragraphs
                if i >= start_at && (i - start_at) % density == 0
                  p.add_next_sibling(ad_html_to_inject)
                end
              end
            end
          end.to_html
        end
      end
    end
  end
end