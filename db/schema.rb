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

ActiveRecord::Schema.define(version: 20170509135512) do

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
    t.integer  "Episode_ID"
    t.integer  "Season_Number"
    t.string   "Title_Episode"
    t.integer  "Episode_Number"
    t.datetime "Date"
    t.string   "Description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "media", force: :cascade do |t|
    t.integer  "Media_ID"
    t.string   "Title"
    t.string   "Type"
    t.string   "Style"
    t.integer  "Season"
    t.string   "Director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_media", force: :cascade do |t|
    t.integer  "Member_Media_ID"
    t.integer  "Media"
    t.integer  "current_season"
    t.integer  "current_episode"
    t.boolean  "Done"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "Title_Media"
    t.integer  "Season_Number"
    t.datetime "Date"
    t.integer  "Episode"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
