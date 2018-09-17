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

ActiveRecord::Schema.define(version: 20171005011853) do

  create_table "cars", force: :cascade do |t|
    t.string "lic"
    t.string "manf"
    t.string "mod"
    t.string "style"
    t.string "location"
    t.float "rate"
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.string "email"
    t.string "lic"
    t.text "status"
    t.datetime "from"
    t.datetime "to"
    t.float "amount"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "state"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "email"
    t.string "lic"
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "email"
    t.string "lic"
    t.string "manf"
    t.string "mod"
    t.string "style"
    t.string "location"
    t.float "rate"
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
  end

end