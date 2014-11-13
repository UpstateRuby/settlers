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

ActiveRecord::Schema.define(version: 20141113012908) do

  create_table "cards_games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["game_id"], name: "index_comments_on_game_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "development_cards", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_users", ["game_id"], name: "index_game_users_on_game_id", using: :btree
  add_index "game_users", ["user_id"], name: "index_game_users_on_user_id", using: :btree

  create_table "games", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "theme_id"
  end

  add_index "games", ["theme_id"], name: "index_games_on_theme_id", using: :btree

  create_table "hexes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resouce_id"
    t.integer  "number"
  end

  add_index "hexes", ["resouce_id"], name: "index_hexes_on_resouce_id", using: :btree

  create_table "pieces", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_cards", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "lumber_name"
    t.string   "lumber_card_img_path"
    t.string   "lumber_hex_img_path"
    t.string   "brick_name"
    t.string   "brick_card_img_path"
    t.string   "brick_hex_img_path"
    t.string   "ore_name"
    t.string   "ore_card_img_path"
    t.string   "ore_hex_img_path"
    t.string   "grain_name"
    t.string   "grain_card_img_path"
    t.string   "grain_hex_img_path"
    t.string   "wool_name"
    t.string   "wool_card_img_path"
    t.string   "wool_hex_img_path"
    t.string   "desert_name"
    t.string   "desert_card_img_path"
    t.string   "desert_hex_img_path"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
