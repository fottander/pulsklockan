class Brand < ApplicationRecord
  validates_presence_of :name
  default_scope {order('name ASC')}
  has_many :products
end
