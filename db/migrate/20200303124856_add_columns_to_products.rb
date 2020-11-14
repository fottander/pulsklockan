class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :height, :float
    add_column :products, :width, :float
    add_column :products, :depth, :float
    add_column :products, :weight, :float
    add_column :products, :battery, :text
    add_column :products, :display, :text
    add_column :products, :touch_screen, :boolean
    add_column :products, :water_res, :text
    add_column :products, :memory, :text

    add_column :products, :os_compatible, :text
    add_column :products, :bluetooth, :boolean
    add_column :products, :wi_fi, :boolean
    add_column :products, :apps, :text
    add_column :products, :nfc, :boolean
    add_column :products, :voice_control, :boolean
    add_column :products, :phone_call, :boolean
    add_column :products, :music, :boolean

    add_column :products, :gps, :boolean
    add_column :products, :heart_rate, :boolean
    add_column :products, :barometer, :boolean
    add_column :products, :sleep_tracking, :boolean
    add_column :products, :calories, :boolean
    add_column :products, :steps, :boolean
    add_column :products, :oxygen, :boolean
    add_column :products, :golf, :boolean
    add_column :products, :cycling, :boolean
    add_column :products, :swimming, :boolean

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
