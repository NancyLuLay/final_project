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

ActiveRecord::Schema.define(version: 20161002010525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "comment_body"
    t.integer  "post_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["post_id"], name: "index_comments_on_post_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "body"
    t.index ["user_id"], name: "index_opportunities_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "post_title"
    t.text     "post_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "post_image"
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "alma_mater"
    t.string   "academic_discipline"
    t.string   "specific_discipline"
    t.string   "specialization"
    t.string   "topic_of_research"
    t.string   "level_of_education"
    t.string   "current_company"
    t.string   "current_position"
    t.string   "website"
    t.string   "opportunities"
    t.string   "location"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "uid"
    t.string   "provider"
    t.string   "linkedin_token"
    t.string   "linkedin_secret"
    t.text     "linkedin_raw_info"
    t.string   "profile_picture"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", using: :btree
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "opportunities", "users"
  add_foreign_key "posts", "users"
end