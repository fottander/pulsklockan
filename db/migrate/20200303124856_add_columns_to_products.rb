class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :height, :float
    add_column :products, :width, :float
    add_column :products, :depth, :float
    add_column :products, :weight, :float
    add_column :products, :battery, :integer
    add_column :products, :battery_type, :text
    add_column :products, :display, :text
    add_column :products, :water_res, :text
    add_column :products, :memory, :text
    add_column :products, :gps, :text
    add_column :products, :bluetooth, :text
    add_column :products, :wi_fi, :text
    add_column :products, :os_system, :text
    add_column :products, :heart_rate, :text
    add_column :products, :apps, :text
    add_column :products, :sleep_tracking, :text
    add_column :products, :fitness_features, :text

    add_column :products, :barometer, :boolean
    add_column :products, :altimeter, :boolean
    add_column :products, :nfc, :boolean
    add_column :products, :touch_screen, :boolean
    add_column :products, :voice_control, :boolean
    add_column :products, :phone_call, :boolean

    add_column :products, :store_1_name, :text
    add_column :products, :store_1_link, :text
    add_column :products, :store_1_price, :float
    add_column :products, :store_2_name, :text
    add_column :products, :store_2_link, :text
    add_column :products, :store_2_price, :float
    add_column :products, :store_3_name, :text
    add_column :products, :store_3_link, :text
    add_column :products, :store_3_price, :float
    add_column :products, :active, :boolean, default: false
  end
end
