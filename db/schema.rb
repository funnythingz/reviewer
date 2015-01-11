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

ActiveRecord::Schema.define(version: 20150111060620) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",               limit: 255, default: "", null: false
    t.string   "encrypted_password",  limit: 255, default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",  limit: 255
    t.string   "last_sign_in_ip",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree

  create_table "areas", force: :cascade do |t|
    t.integer  "top_id",     limit: 4
    t.string   "name",       limit: 255
    t.boolean  "top_flg",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "group",       limit: 255
    t.integer  "area_id",     limit: 4
    t.string   "postal_code", limit: 255
    t.string   "address",     limit: 255
    t.string   "tel",         limit: 255
    t.string   "url",         limit: 255
    t.string   "mail",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "reviewer",   limit: 255
    t.string   "mail",       limit: 255
    t.text     "comment",    limit: 65535
    t.string   "status",     limit: 255
    t.integer  "clinic_id",  limit: 4
    t.string   "action",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
