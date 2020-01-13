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

ActiveRecord::Schema.define(version: 2020_01_13_211617) do

  create_table "bookings", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.text "heights"
    t.text "comment"
    t.date "checkin"
    t.date "checkout"
    t.integer "citybike"
    t.integer "trekking"
    t.integer "cyclo"
    t.integer "electric"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "saddlebag", default: false
    t.boolean "insurance", default: false
    t.boolean "baby_chair", default: false
    t.boolean "spd_pedals", default: false
    t.boolean "hitch_bike_racks", default: false
    t.boolean "trunk_bike_rack", default: false
  end

end
