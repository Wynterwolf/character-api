# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_03_061645) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "auspice"
    t.string "tribe"
    t.string "concept"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sheets", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "stat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_sheets_on_character_id"
    t.index ["stat_id"], name: "index_sheets_on_stat_id"
  end

  create_table "stats", force: :cascade do |t|
    t.string "strength"
    t.string "charisma"
    t.string "perception"
    t.string "dexterity"
    t.string "manipulation"
    t.string "intelligence"
    t.string "stamina"
    t.string "appearance"
    t.string "wit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sheets", "characters"
  add_foreign_key "sheets", "stats"
end
