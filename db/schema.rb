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

ActiveRecord::Schema.define(version: 20160926031540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "balls", force: :cascade do |t|
    t.string   "number"
    t.integer  "weight"
    t.integer  "scale_game_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["scale_game_id"], name: "index_balls_on_scale_game_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scale_games", force: :cascade do |t|
    t.integer  "weigh_count"
    t.integer  "ball_count"
    t.string   "succeeded"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scales", force: :cascade do |t|
    t.string   "name"
    t.integer  "scale_game_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["scale_game_id"], name: "index_scales_on_scale_game_id", using: :btree
  end

  create_table "twentyfortyeight_games", force: :cascade do |t|
    t.integer  "moves"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "balls", "scale_games"
  add_foreign_key "scales", "scale_games"
end
