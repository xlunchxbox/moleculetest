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

ActiveRecord::Schema.define(version: 20131022171520) do

  create_table "price_curve_brents", force: true do |t|
    t.datetime "month_year"
    t.float    "settle_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_curve_nymexes", force: true do |t|
    t.datetime "month_year"
    t.float    "settle_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_curve_wtis", force: true do |t|
    t.datetime "month_year"
    t.float    "settle_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.string   "counter_party"
    t.string   "trader"
    t.string   "mtm_curve"
    t.string   "buy_sell"
    t.integer  "price"
    t.integer  "volume"
    t.datetime "tenor_start"
    t.datetime "tenor_end"
    t.string   "delivery_location"
    t.string   "instrument"
    t.string   "brokerage"
    t.string   "tags"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
