class Product < ApplicationRecord
  validates_presence_of :name, :price, :description
  validates :price, numericality: { only_float: true }
  belongs_to :brand
end
