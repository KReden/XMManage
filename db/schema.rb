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

ActiveRecord::Schema.define(version: 20150509215213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acceptance_criterium", force: :cascade do |t|
    t.integer  "story_id",   null: false
    t.string   "given"
    t.string   "when"
    t.string   "then"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "acceptance_criterium", ["story_id"], name: "index_acceptance_criterium_on_story_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "story_id",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["story_id"], name: "index_comments_on_story_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "epics", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "total_points"
    t.integer  "created_by_id", null: false
    t.integer  "updated_by_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "sprints", force: :cascade do |t|
    t.string   "name",         null: false
    t.datetime "begin_date"
    t.datetime "end_date"
    t.integer  "total_points"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "name",                             null: false
    t.string   "description"
    t.string   "assumptions"
    t.string   "status"
    t.integer  "estimated_points"
    t.integer  "actual_points"
    t.boolean  "complete",         default: false
    t.datetime "completed_on"
    t.integer  "epic_id"
    t.integer  "sprint_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "stories", ["epic_id"], name: "index_stories_on_epic_id", using: :btree
  add_index "stories", ["sprint_id"], name: "index_stories_on_sprint_id", using: :btree

  create_table "stories_users", id: false, force: :cascade do |t|
    t.integer "story_id"
    t.integer "user_id"
  end

  add_index "stories_users", ["story_id", "user_id"], name: "index_stories_users_on_story_id_and_user_id", using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
