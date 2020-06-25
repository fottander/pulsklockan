# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_111614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.text "extra_info"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.text "dimension"
    t.text "battery"
    t.text "weight"
    t.text "display"
    t.text "water_res"
    t.text "memory"
    t.text "gps"
    t.text "bluetooth"
    t.text "wi_fi"
    t.text "os_system"
    t.text "nfc"
    t.text "heart_rate"
    t.text "touch_screen"
    t.text "voice_control"
    t.text "phone_call"
    t.text "offline_music"
    t.text "apps"
    t.text "sleep_tracking"
    t.text "fitness_features"
    t.text "external_link"
    t.bigint "primary_category_id"
    t.bigint "secondary_category_id"
    t.bigint "third_category_id"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["primary_category_id"], name: "index_products_on_primary_category_id"
    t.index ["secondary_category_id"], name: "index_products_on_secondary_category_id"
    t.index ["third_category_id"], name: "index_products_on_third_category_id"
  end

  add_foreign_key "products", "brands"
end
