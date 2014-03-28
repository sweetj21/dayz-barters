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

ActiveRecord::Schema.define(version: 20140328204744) do

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "coordinates"
    t.string   "external_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loots", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "stackable"
    t.boolean  "experimental"
    t.string   "external_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.integer  "poster_id"
    t.integer  "purchaser_id"
    t.string   "location"
    t.boolean  "urban"
    t.boolean  "strict_trade"
    t.string   "server"
    t.datetime "meeting_time"
    t.text     "notes"
    t.integer  "threat_level"
    t.text     "offered"
    t.text     "requested"
    t.text     "received"
    t.boolean  "accepted"
    t.boolean  "completed"
    t.text     "trace_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "steamid"
    t.integer  "karma"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
