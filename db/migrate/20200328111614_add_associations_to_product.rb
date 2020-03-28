class AddAssociationsToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :primary_category
    add_reference :products, :secondary_category
    add_reference :products, :third_category
  end
end
