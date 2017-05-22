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

ActiveRecord::Schema.define(version: 20170520085340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "episodes", force: :cascade do |t|
    t.integer  "season_id"
    t.integer  "medium_id"
    t.integer  "season_number"
    t.string   "title_episode"
    t.integer  "episode_number"
    t.datetime "date"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["season_id"], name: "index_episodes_on_season_id", using: :btree
  end

  create_table "media", force: :cascade do |t|
    t.string   "title"
    t.string   "style"
    t.string   "genre"
    t.integer  "nb_season"
    t.string   "director"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "member_media", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "medium_id"
    t.integer  "current_season"
    t.integer  "current_episode"
    t.boolean  "Done"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_member_media_on_user_id", using: :btree
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "medium_id"
    t.string   "title_media"
    t.integer  "season_number"
    t.datetime "date"
    t.integer  "nb_episode"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["medium_id"], name: "index_seasons_on_medium_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "member_media"
    t.string   "username"
    t.string   "authentication_token",   limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
