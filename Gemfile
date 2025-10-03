# Gemfile
source "https://rubygems.org"

# Core
gem "jekyll", "~> 4.1"

# Jekyll plugins (explicit, replacing gemspec)
group :jekyll_plugins do
  gem "jekyll-sitemap",         "~> 1.4.0"
  gem "jekyll-mentions",        "~> 1.6.0"
  gem "jekyll-paginate",        "~> 1.1.0"
  gem "jekyll-seo-tag",         "~> 2.7.1"
  gem "jekyll-redirect-from",   "~> 0.16"
  gem "jekyll-feed",            "~> 0.15"
  gem "jekyll-commonmark",      "~> 1.3.1"
  gem "jekyll-include-cache",   "~> 0.2"
  gem "jemoji",                 "~> 0.12"
end

# Ruby 3+ local server compatibility
gem "webrick", "~> 1.7"

# Windows-only niceties
platforms :mingw, :x64_mingw, :mswin do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
  gem "wdm", "~> 0.1.1"
end
