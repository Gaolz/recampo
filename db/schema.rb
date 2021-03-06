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

ActiveRecord::Schema.define(version: 20170805153639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "post_votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_votes", ["post_id"], name: "index_post_votes_on_post_id", using: :btree
  add_index "post_votes", ["user_id", "post_id"], name: "index_post_votes_on_user_id_and_post_id", unique: true, using: :btree
  add_index "post_votes", ["user_id"], name: "index_post_votes_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "post_number"
    t.integer  "votes_up",    default: 0
    t.integer  "votes_down",  default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "posts", ["topic_id"], name: "index_posts_on_topic_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topics", ["user_id"], name: "index_topics_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "username_lower"
    t.string   "name"
    t.string   "email"
    t.string   "email_lower"
    t.string   "password_digest"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "posts", "topics"
  add_foreign_key "posts", "users"
  add_foreign_key "topics", "users"
end
