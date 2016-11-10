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

ActiveRecord::Schema.define(version: 20161110192551) do

  create_table "contents", force: :cascade do |t|
    t.string   "name"
    t.string   "header_title"
    t.string   "services_title"
    t.string   "slogan_title"
    t.string   "about_title"
    t.text     "about_description"
    t.string   "contact_title"
    t.string   "contact_subtitle"
    t.string   "fb_username"
    t.string   "ig_username"
    t.string   "twitter_username"
    t.string   "in_username"
    t.string   "pin_username"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "services_img_file_name"
    t.string   "services_img_content_type"
    t.integer  "services_img_file_size"
    t.datetime "services_img_updated_at"
  end

end
