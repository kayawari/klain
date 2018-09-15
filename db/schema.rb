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

ActiveRecord::Schema.define(version: 2018_09_15_130325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "keep_items", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.bigint "kpt_id"
    t.index ["kpt_id"], name: "index_keep_items_on_kpt_id"
  end

  create_table "kpts", force: :cascade do |t|
    t.string "title", null: false
  end

  create_table "problem_items", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.bigint "kpt_id"
    t.index ["kpt_id"], name: "index_problem_items_on_kpt_id"
  end

  create_table "try_items", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.boolean "checked", null: false
    t.bigint "kpt_id"
    t.index ["kpt_id"], name: "index_try_items_on_kpt_id"
  end

end
