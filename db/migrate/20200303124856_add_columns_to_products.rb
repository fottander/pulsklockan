class AddColumnsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :description, :text
    add_column :products, :dimension, :text
    add_column :products, :battery, :text
    add_column :products, :weight, :text
    add_column :products, :display, :text
    add_column :products, :water_res, :text
    add_column :products, :memory, :text
    add_column :products, :gps, :text
    add_column :products, :bluetooth, :text
    add_column :products, :wi_fi, :text
    add_column :products, :os_system, :text
    add_column :products, :nfc, :text
    add_column :products, :heart_rate, :text
    add_column :products, :touch_screen, :text
    add_column :products, :voice_control, :text
    add_column :products, :phone_call, :text
    add_column :products, :offline_music, :text
    add_column :products, :apps, :text
    add_column :products, :sleep_tracking, :text
    add_column :products, :fitness_features, :text
  end
end
