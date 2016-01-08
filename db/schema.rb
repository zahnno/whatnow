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

ActiveRecord::Schema.define(version: 20160108203315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "grpsize"
    t.string   "address"
    t.string   "phone"
    t.string   "cost"
    t.string   "link"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.decimal  "latitude",              precision: 8, scale: 6
    t.decimal  "longitude",             precision: 9, scale: 6
    t.string   "photo"
    t.integer  "eventtime",   limit: 8
    t.string   "actualcost"
    t.string   "description"
  end

  create_table "selects", force: :cascade do |t|
    t.string   "group_size"
    t.string   "interest"
    t.string   "location"
    t.datetime "sessiontime"
    t.string   "cost"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "longitude",   precision: 9, scale: 6
    t.decimal  "latitude",    precision: 8, scale: 6
  end

end
