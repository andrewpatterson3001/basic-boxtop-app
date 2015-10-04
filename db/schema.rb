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

ActiveRecord::Schema.define(version: 20151004005253) do

  create_table "boxtops", force: :cascade do |t|
    t.string   "hidden_code"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "boxtops", ["student_id"], name: "index_boxtops_on_student_id"

  create_table "homerooms", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "teacher_id"
    t.integer  "gradelevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "homerooms", ["school_id"], name: "index_homerooms_on_school_id"
  add_index "homerooms", ["teacher_id"], name: "index_homerooms_on_teacher_id"

  create_table "schools", force: :cascade do |t|
    t.string   "state"
    t.string   "district"
    t.boolean  "title9_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_initial"
    t.string   "type"
    t.string   "password_digest"
    t.integer  "num_boxtops"
    t.float    "amt_donated"
    t.integer  "homeroom_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["homeroom_id"], name: "index_users_on_homeroom_id"

end
