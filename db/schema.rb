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

ActiveRecord::Schema.define(version: 20150320040959) do

  create_table "coaches", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "number"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address"
    t.string   "password_hash"
  end

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.string   "title"
    t.string   "description"
    t.datetime "start"
    t.datetime "end"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "position"
    t.string   "number"
    t.string   "bio"
    t.string   "throw"
    t.string   "bat"
    t.integer  "age"
    t.integer  "height"
    t.integer  "weight"
    t.string   "college"
    t.string   "high_school"
    t.string   "home_town"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "description"
    t.string   "head_coach"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "team_logo_file_name"
    t.string   "team_logo_content_type"
    t.integer  "team_logo_file_size"
    t.datetime "team_logo_updated_at"
    t.integer  "coach_id"
  end

end
