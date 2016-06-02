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

ActiveRecord::Schema.define(version: 20160523225507) do

  create_table "couplings", force: :cascade do |t|
    t.text     "category"
    t.integer  "pressure_rating"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packers", force: :cascade do |t|
    t.integer  "size"
    t.text     "category"
    t.integer  "pressure_rating"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "safety_valves", force: :cascade do |t|
    t.integer  "size"
    t.text     "category"
    t.integer  "pressure_rating"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tubings", force: :cascade do |t|
    t.integer  "coupling_id"
    t.integer  "packer_id"
    t.integer  "safety_valve_id"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
