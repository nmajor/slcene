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

ActiveRecord::Schema.define(version: 20150116051245) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.string   "status"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "venue_name"
    t.string   "address"
    t.string   "image"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["end_at"], name: "index_events_on_end_at"
  add_index "events", ["price"], name: "index_events_on_price"
  add_index "events", ["start_at"], name: "index_events_on_start_at"
  add_index "events", ["status"], name: "index_events_on_status"

end
