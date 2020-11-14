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

ActiveRecord::Schema.define(version: 2020_07_01_180155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.bigint "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "width"
    t.float "height"
    t.float "depth"
    t.float "weight"
    t.integer "battery"
    t.text "battery_type"
    t.text "display"
    t.text "water_res"
    t.text "memory"
    t.text "gps"
    t.text "bluetooth"
    t.text "wi_fi"
    t.text "os_system"
    t.text "heart_rate"
    t.text "apps"
    t.text "sleep_tracking"
    t.text "fitness_features"
    t.boolean "barometer"
    t.boolean "altimeter"
    t.boolean "nfc"
    t.boolean "touch_screen"
    t.boolean "voice_control"
    t.boolean "phone_call"
    t.text "store_1_name"
    t.text "store_1_link"
    t.float "store_1_price"
    t.text "store_2_name"
    t.text "store_2_link"
    t.float "store_2_price"
    t.text "store_3_name"
    t.text "store_3_link"
    t.float "store_3_price"
    t.boolean "active", default: false
    t.bigint "primary_category_id"
    t.bigint "secondary_category_id"
    t.bigint "third_category_id"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["primary_category_id"], name: "index_products_on_primary_category_id"
    t.index ["secondary_category_id"], name: "index_products_on_secondary_category_id"
    t.index ["third_category_id"], name: "index_products_on_third_category_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "products", "brands"
end
