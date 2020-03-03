class Product < ApplicationRecord
  validates_presence_of :name, :price, :description
  belongs_to :brand
end
