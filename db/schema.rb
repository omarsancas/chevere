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

ActiveRecord::Schema.define(version: 20160228040038) do

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

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "cover_photo", limit: 255
    t.datetime "start_time"
    t.string   "place",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "beer_catalogs", "beer_types"
end
