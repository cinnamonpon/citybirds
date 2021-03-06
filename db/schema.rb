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

ActiveRecord::Schema.define(version: 20150417153748) do

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id",      limit: 4
    t.integer  "user_id",      limit: 4
    t.string   "message",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "comment_user", limit: 4
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "post_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.string   "ntype",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "liker",      limit: 4
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "path",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
    t.string   "dir",        limit: 255
    t.string   "mtype",      limit: 255
    t.integer  "likes",      limit: 4
  end

  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "subscriber", limit: 4
    t.integer  "subscribee", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "fname",         limit: 255
    t.string   "lname",         limit: 255
    t.string   "password_hash", limit: 255
    t.string   "salt",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",       limit: 4
  end

end
