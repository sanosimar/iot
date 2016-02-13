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

ActiveRecord::Schema.define(version: 20160212231707) do

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.decimal  "value"
    t.decimal  "value_max"
    t.decimal  "value_min"
    t.datetime "date_published"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "group_component_id"
  end

  create_table "group_components", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.boolean  "enable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string   "name"
    t.string   "name_with_price"
    t.decimal  "value"
    t.string   "currency"
    t.string   "color"
    t.string   "group"
    t.boolean  "enable"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "username"
    t.boolean  "email_confirmed"
    t.date     "bithday"
    t.text     "bio"
    t.string   "color"
    t.string   "image_url"
    t.string   "subscription"
    t.string   "social_network"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "subscription_id"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "name"
    t.string   "name_with_price"
    t.decimal  "value"
    t.string   "currency"
    t.string   "color"
    t.string   "group"
    t.boolean  "enable"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
