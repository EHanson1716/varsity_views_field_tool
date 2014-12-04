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

ActiveRecord::Schema.define(version: 20141204003320) do

  create_table "event_titles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "photographer_id"
    t.string   "date"
    t.string   "time"
    t.integer  "location_id"
    t.integer  "sport_id"
    t.integer  "level_id"
    t.integer  "gender_id"
    t.integer  "home_id"
    t.integer  "away_id"
    t.integer  "event_title_id"
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.text     "comments"
    t.binary   "photos_submitted"
    t.binary   "game_paid"
    t.binary   "rainout"
    t.binary   "denied_entry"
    t.binary   "equipment_failure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "short_name"
    t.string   "long_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "main_phone"
    t.string   "rainout_phone"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photographers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "paypal"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.binary   "admin_status"
  end

  add_index "photographers", ["email"], name: "index_photographers_on_email", unique: true
  add_index "photographers", ["reset_password_token"], name: "index_photographers_on_reset_password_token", unique: true

  create_table "schools", force: true do |t|
    t.string   "short_name"
    t.string   "long_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "sport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
