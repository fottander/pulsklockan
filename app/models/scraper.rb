require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  def scrape_product_prices
    pulsklockan_url = "https://b2c.cdon.se/hemelektronik/samsung-galaxy-watch-42mm-p50505496"
    html = open(pulsklockan_url)
    doc = Nokogiri::HTML(html)
    products = doc.css('.product-details__product-wrapper').css('.buy-area__price-wrapper').css('.buy-area__current-price')
    binding.pry
  end
end

scrape = Scraper.new
scrape.scrape_product_prices
