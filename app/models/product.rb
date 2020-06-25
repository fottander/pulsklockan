class Product < ApplicationRecord
  validates_presence_of :name, :price, :description, :external_link
  validates :price, numericality: { only_float: true }
  belongs_to :brand
  belongs_to :primary_category, class_name: 'Category', optional: true
  belongs_to :secondary_category, class_name: 'Category', optional: true
  belongs_to :third_category, class_name: 'Category', optional: true
end
