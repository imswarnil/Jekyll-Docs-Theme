# _plugins/auto_ads_injector.rb
# A Jekyll plugin to automatically inject lazy-loaded AdSense units into posts and pages.
# It contains all ad definitions and requires no external JavaScript.

require 'nokogiri'

module Jekyll
  class AutoAdsInjector

    # --- Central Ad Unit Definition ---
    # This is where all your ad units are stored.
    # The key (e.g., "in-article") is what you will use in _config.yml.
    AD_UNITS = {
      # In-Content Ads
      "in-article" => { slot: "6501428979", type: "In-article" },
      "in-feed"    => { slot: "9130894804", type: "In-feed" },

      # Multiplex Ads
      "multiplex-vertical"   => { slot: "3375031396", type: "Multiplex" },
      "multiplex-horizontal" => { slot: "6808134701", type: "Multiplex" },

      # Vertical "Skyscraper" Display Ads
      "large-skyscraper"    => { slot: "2712169578", type: "Display", shape: "vertical" },
      "medium-skyscraper"   => { slot: "9488965956", type: "Display", shape: "vertical" },
      "small-skyscraper"    => { slot: "4394096538", type: "Display", shape: "vertical" },
      "skyscraper-250x600"  => { slot: "5882506557", type: "Display", shape: "vertical" },
      "responsive-vertical" => { slot: "3487917390", type: "Display", shape: "vertical" },

      # Horizontal "Leaderboard" Display Ads
      "display-980x120"        => { slot: "7400425360", type: "Display", shape: "horizontal" },
      "mobile-leaderboard"     => { slot: "4003326983", type: "Display", shape: "horizontal" },
      "responsive-leaderboard" => { slot: "4774277934", type: "Display", shape: "horizontal" },
      "billboard"              => { slot: "4921873558", type: "Display", shape: "horizontal" },
      "leaderboard-980x90"     => { slot: "8539588233", type: "Display", shape: "horizontal" },
      "leaderboard-728x90"     => { slot: "1864856299", type: "Display", shape: "horizontal" },
      "responsive-horizontal"  => { slot: "8939839370", type: "Display", shape: "horizontal" },
      "large-button"           => { slot: "3836856744", type: "Display", shape: "horizontal" },
      
      # Rectangular & Square Display Ads
      "large-rectangle"     => { slot: "1684851337", type: "Display", shape: "rectangle" },
      "small-square"        => { slot: "6066270853", type: "Display", shape: "rectangle" },
      "medium-square"       => { slot: "9619442326", type: "Display", shape: "rectangle" },
      "chatgpting-200x250"  => { slot: "1549380617", type: "Display", shape: "rectangle" },
      "responsive-square"   => { slot: "7663977887", type: "Display", shape: "rectangle" },

      # Default "Auto" Format Display Ad
      "imswarnil-main-blog" => { slot: "3295795878", type: "Display", shape: "auto" }
    }

    def self.generate_ad_html(type, site_config)
      ad_info = AD_UNITS[type]
      return "" unless ad_info

      publisher_id = site_config['adsense']['publisher_id']
      
      # This is the HTML that gets injected. It includes the placeholder
      # and a self-contained script for lazy loading.
      <<~HTML
        <div class="crma-ad-container" data-ad-type="#{ad_info[:type]}" data-ad-slot="#{ad_info[:slot]}" data-ad-shape="#{ad_info[:shape] || 'auto'}" data-ad-publisher-id="#{publisher_id}">
          <div class="crma-ad-label">Advertisement</div>
          <div class="crma-ad-unit-placeholder"></div>
          <script>
            (function() {
              var container = document.currentScript.parentElement;
              var observer = new IntersectionObserver(function(entries, observer) {
                entries.forEach(function(entry) {
                  if (entry.isIntersecting) {
                    var ad = { type: container.dataset.adType, slot: container.dataset.adSlot, shape: container.dataset.adShape, publisherId: container.dataset.adPublisherId };
                    var ins = document.createElement('ins');
                    ins.className = 'adsbygoogle';
                    ins.style.display = 'block';
                    ins.setAttribute('data-ad-client', ad.publisherId);
                    ins.setAttribute('data-ad-slot', ad.slot);
                    if (ad.type === 'In-article' || ad.type === 'In-feed') {
                      ins.setAttribute('data-ad-format', 'fluid');
                      ins.setAttribute('data-ad-layout', 'in-article');
                    } else if (ad.type === 'Multiplex') {
                      ins.setAttribute('data-ad-format', 'autorelaxed');
                    } else { ins.setAttribute('data-ad-format', ad.shape); ins.setAttribute('data-full-width-responsive', 'true'); }
                    var placeholder = container.querySelector('.crma-ad-unit-placeholder');
                    if (placeholder) { placeholder.replaceWith(ins); }
                    try { (window.adsbygoogle = window.adsbygoogle || []).push({}); } catch (e) {}
                    container.classList.add('crma-ad-loaded');
                    observer.unobserve(container);
                  }
                });
              }, { rootMargin: '200px 0px' });
              observer.observe(container);
            })();
          </script>
        </div>
      HTML
    end

    Jekyll::Hooks.register [:posts, :pages], :post_render do |doc|
      # Only inject ads in the 'production' environment.
      if doc.site.config['auto_ads'] && doc.site.config['auto_ads']['enabled'] && doc.site.config['jekyll_env'] == 'production'
        config = doc.site.config['auto_ads']
        if config['layouts'].include?(doc.data['layout'])
          doc.output = Nokogiri::HTML.fragment(doc.output).tap do |html|
            paragraphs = html.css('article > p')
            if paragraphs.count >= config['start_after']
              start_at = config['start_after']
              density = config['density']
              ad_type = config['ad_type']
              ad_html_to_inject = generate_ad_html(ad_type, doc.site.config)
              paragraphs.each_with_index do |p, i|
                # Injections are 1-based, not 0-based.
                current_p_number = i + 1
                if current_p_number >= start_at && (current_p_number - start_at) % density == 0
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