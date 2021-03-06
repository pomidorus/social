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

ActiveRecord::Schema.define(version: 20131229123557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benefit_categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "benefit_rights", force: true do |t|
    t.integer  "benefit_id"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "benefit_rights", ["benefit_id"], name: "index_benefit_rights_on_benefit_id", using: :btree
  add_index "benefit_rights", ["profile_id"], name: "index_benefit_rights_on_profile_id", using: :btree

  create_table "benefits", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "benefit_category_id"
  end

  add_index "benefits", ["benefit_category_id"], name: "index_benefits_on_benefit_category_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
