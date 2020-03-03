class Brand < ApplicationRecord
  validates_presence_of :name, :description
  default_scope {order('name ASC')}
  has_many :products, dependent: :destroy
end
