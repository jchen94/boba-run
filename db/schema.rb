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

ActiveRecord::Schema.define(version: 20160526060226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversions", force: :cascade do |t|
    t.string   "yelp_id"
    t.decimal  "medium_to_large"
    t.boolean  "tax_included"
    t.decimal  "tax_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: :cascade do |t|
    t.string   "user_id"
    t.string   "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id", using: :btree

  create_table "group_members", force: :cascade do |t|
    t.string "g_id"
    t.string "member_username"
  end

  create_table "groups", force: :cascade do |t|
    t.string "g_id"
    t.string "owner_username"
    t.string "group_name"
    t.string "image"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "yelp_id"
    t.string   "category"
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_members", force: :cascade do |t|
    t.string  "room_id"
    t.string  "room_members_id"
    t.string  "drink"
    t.decimal "price"
    t.boolean "drink_purchased"
    t.boolean "runner_paid"
  end

  add_index "room_members", ["room_id"], name: "index_room_members_on_room_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string "room_id"
    t.string "runner_id"
    t.string "room_name"
  end

  add_index "rooms", ["room_id"], name: "index_rooms_on_room_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
