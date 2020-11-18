class Category < ApplicationRecord
  validates_presence_of :name, :description
  default_scope {order('name ASC')}
  has_many :primary_category_category, class_name: 'Product', foreign_key: 'primary_category_id'
  has_many :secondary_category_category, class_name: 'Product', foreign_key: 'secondary_category_id'
  has_many :third_category_category, class_name: 'Product', foreign_key: 'third_category_id'
  has_one_attached :avatar

  extend FriendlyId
  friendly_id :name, use: :slugged
end
