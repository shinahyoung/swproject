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

ActiveRecord::Schema.define(version: 20150529081055) do

  create_table "buys", force: :cascade do |t|
    t.string   "image"
    t.integer  "buy_id"
    t.integer  "post_id"
    t.integer  "point"
    t.integer  "price"
    t.integer  "qty"
    t.text     "option"
    t.integer  "user_id"
    t.string   "addr"
    t.string   "phone"
    t.text     "memo"
    t.string   "from"
    t.string   "to"
    t.integer  "total_price"
    t.integer  "total_point"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "subject"
    t.string   "content"
    t.string   "name"
    t.integer  "hits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "buy_id"
    t.integer  "post_id"
    t.integer  "cart_id"
    t.integer  "point"
    t.integer  "price"
    t.integer  "qty"
    t.text     "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "category"
    t.string   "title"
    t.text     "content"
    t.integer  "price"
    t.integer  "point"
    t.integer  "qty"
    t.text     "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "birth"
    t.string   "addr"
    t.string   "phone"
    t.string   "email"
    t.integer  "point"
    t.integer  "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
