class AddColumnsToBrands < ActiveRecord::Migration[6.0]
  def change
    add_column :brands, :description, :text
    add_column :brands, :extra_info, :text
  end
end
