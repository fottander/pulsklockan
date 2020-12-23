class Article < ApplicationRecord
  validates_presence_of :title, :content

  extend FriendlyId
  friendly_id :title, use: :slugged
end
