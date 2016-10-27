require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://freizeitticket.info'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/pages/about', :changefreq => 'weekly'
  add '/pages/impressum', :changefreq => 'weekly'
  (1..24).each{|n| add "/area/details?id=#{n}", :changefreq => 'daily'}
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks