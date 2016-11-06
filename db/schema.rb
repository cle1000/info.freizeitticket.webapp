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

ActiveRecord::Schema.define(version: 20161106074927) do

  create_table "avalanche_regions", force: :cascade do |t|
    t.integer  "avalanche_id"
    t.integer  "region"
    t.boolean  "am"
    t.boolean  "over_1800"
    t.integer  "danger_rate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "avalanches", force: :cascade do |t|
    t.datetime "time"
    t.string   "author"
    t.text     "comment"
    t.text     "highlight"
    t.text     "synopsis_comment"
    t.text     "snowpack_structure_comment"
    t.text     "travel_advisary_comment"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "skiresorts", force: :cascade do |t|
    t.string   "name"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "bergfex"
    t.string   "snow_page"
    t.string   "homepage"
    t.string   "avalanche_region"
    t.string   "weather"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "temperatur"
    t.datetime "last_push_time"
    t.integer  "last_push_height"
  end

  create_table "snow_reports", force: :cascade do |t|
    t.integer  "skiresort_id"
    t.datetime "time"
    t.integer  "snow_height"
    t.boolean  "powder_alert"
    t.string   "source"
    t.string   "link"
    t.string   "html"
    t.boolean  "push"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "webcams", force: :cascade do |t|
    t.integer  "skiresort_id"
    t.string   "name"
    t.integer  "feratel_id"
    t.integer  "height"
    t.string   "wms"
    t.string   "image"
    t.string   "panomax_area"
    t.string   "panomax_webcam"
    t.integer  "panomax_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "wide",           default: false
    t.boolean  "error"
  end

end
