# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150726074549) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "size"
    t.string   "notes"
    t.integer  "upc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_observations", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.integer  "store_id"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "price_observations", ["item_id"], name: "index_price_observations_on_item_id"
  add_index "price_observations", ["store_id"], name: "index_price_observations_on_store_id"
  add_index "price_observations", ["user_id"], name: "index_price_observations_on_user_id"

  create_table "store_banners", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "location_name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.integer  "store_banner_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "stores", ["store_banner_id"], name: "index_stores_on_store_banner_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
