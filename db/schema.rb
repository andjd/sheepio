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

ActiveRecord::Schema.define(version: 20160330005730) do

  create_table "bleets", force: :cascade do |t|
    t.string   "text",       limit: 140
    t.string   "image_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heardings", id: false, force: :cascade do |t|
    t.integer  "sheeple_id", null: false
    t.integer  "bleet_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sheeple", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                      null: false
    t.string   "hashed_and_salted_password", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
