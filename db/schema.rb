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

ActiveRecord::Schema.define(version: 20160228051700) do

  create_table "beer_catalogs", force: :cascade do |t|
    t.string   "beer_name",    limit: 255
    t.float    "price",        limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "beer_type_id", limit: 4
  end

  add_index "beer_catalogs", ["beer_type_id"], name: "index_beer_catalogs_on_beer_type_id", using: :btree

  create_table "beer_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drunk_levels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "icon",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "cover_photo", limit: 255
    t.datetime "start_time"
    t.string   "place",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "guest_requests", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "guest_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.integer  "quantity",   limit: 4
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "profile_picture", limit: 255
    t.string   "email",           limit: 255
    t.string   "phone",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "event_id",        limit: 4
    t.integer  "drunk_level_id",  limit: 4
  end

  add_index "guests", ["drunk_level_id"], name: "index_guests_on_drunk_level_id", using: :btree
  add_index "guests", ["event_id"], name: "index_guests_on_event_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "hashtag",    limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "event_id",   limit: 4
  end

  add_index "pictures", ["event_id"], name: "index_pictures_on_event_id", using: :btree

  create_table "product_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.float    "price",           limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "product_type_id", limit: 4
  end

  add_index "products", ["product_type_id"], name: "index_products_on_product_type_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "birthday"
    t.string   "gender",     limit: 255
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "phone",      limit: 255
    t.string   "avatar",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "event_id",   limit: 4
  end

  add_index "users", ["event_id"], name: "index_users_on_event_id", using: :btree

  add_foreign_key "beer_catalogs", "beer_types"
  add_foreign_key "guests", "drunk_levels"
  add_foreign_key "guests", "events"
  add_foreign_key "pictures", "events"
  add_foreign_key "products", "product_types"
  add_foreign_key "users", "events"
end
