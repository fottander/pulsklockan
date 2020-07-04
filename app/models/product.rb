require 'nokogiri'
require 'open-uri'
require 'pry'

class Product < ApplicationRecord
  validates_presence_of :name
  validates :store_1_price, numericality: { only_float: true }, allow_blank: true
  validates :store_2_price, numericality: { only_float: true }, allow_blank: true
  validates :store_2_price, numericality: { only_float: true }, allow_blank: true
  belongs_to :brand
  belongs_to :primary_category, class_name: 'Category', optional: true
  belongs_to :secondary_category, class_name: 'Category', optional: true
  belongs_to :third_category, class_name: 'Category', optional: true
  has_one_attached :avatar
  before_update :scrape_product_price_1
  before_update :scrape_product_price_2
  before_update :scrape_product_price_3

  STORE_OPTIONS = [ "NetOnNet", "Sportamore", "Cdon" ]

  private

  def scrape_product_price_1
    link = "#{self.store_1_link}"
    html = open(link)
    doc = Nokogiri::HTML(html)
    products = doc.css('#productPurchaseBoxContainer').css('.panel-body.productColor').css('.price-big')
    self.store_1_price = products.first.children.text.delete("^0-9").to_f
  end

  def scrape_product_price_2
    if self.store_2_name?
      link = "#{self.store_2_link}"
      html = open(link)
      doc = Nokogiri::HTML(html)
      products = doc.css('#janus_content').css('.sizeselect-wrapper_71limk').css('.red-price-wrapper.reduced.red_price_wrapper_2dpi5mv')
      self.store_2_price = products.first.children.text.delete("^0-9").to_f
    else
      self.store_2_price = nil
    end
  end

  def scrape_product_price_3
    if self.store_3_name?
      link = "#{self.store_3_link}"
      html = open(link)
      doc = Nokogiri::HTML(html)
      products = doc.css('.product-details__product-wrapper').css('.buy-area__price-wrapper').css('.buy-area__current-price')
      self.store_3_price = products.first.children.text.delete("^0-9").to_f
    else
      self.store_3_price = nil
    end
  end

end
