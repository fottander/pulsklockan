class Article < ApplicationRecord
  validates_presence_of :title, :content
  has_rich_text :content

  extend FriendlyId
  friendly_id :title, use: :slugged
end
