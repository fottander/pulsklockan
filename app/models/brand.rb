class Brand < ApplicationRecord
  validates_presence_of :name, :description
  default_scope {order('name ASC')}
  has_many :products, dependent: :destroy
  has_one_attached :avatar

  scope :all_except, ->(brand) { where.not(id: brand) }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
