class Category < ApplicationRecord
  validates_presence_of :name, :description
  default_scope {order('name ASC')}
end
