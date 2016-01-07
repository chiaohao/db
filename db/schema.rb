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

ActiveRecord::Schema.define(version: 20160107014101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bento_orders", force: :cascade do |t|
    t.date     "orderDate"
    t.integer  "totalPrice"
    t.integer  "customer_id"
    t.integer  "payWay_id"
    t.integer  "deliverTime_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "bentos", force: :cascade do |t|
    t.string   "item_name"
    t.integer  "price"
    t.integer  "bentoshop_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bentoshops", force: :cascade do |t|
    t.string   "shop_name"
    t.text     "address"
    t.text     "phone"
    t.text     "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "cname"
    t.string   "account"
    t.string   "password"
    t.text     "city"
    t.text     "address"
    t.text     "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliver_times", force: :cascade do |t|
    t.text     "deliverTime"
    t.integer  "deliverExpense"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "item_id"
    t.integer  "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_ways", force: :cascade do |t|
    t.text     "payWay"
    t.integer  "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pretties", force: :cascade do |t|
    t.string   "name"
    t.text     "prettyStyle"
    t.integer  "strength"
    t.text     "city"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pretty_orderships", force: :cascade do |t|
    t.integer  "pretty_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
