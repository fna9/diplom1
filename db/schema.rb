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

ActiveRecord::Schema.define(version: 20151102204429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "afiles", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "afiles_messages", id: false, force: :cascade do |t|
    t.integer "afile_id",   null: false
    t.integer "message_id", null: false
  end

  create_table "goups_sullabuses", id: false, force: :cascade do |t|
    t.integer "goup_id",     null: false
    t.integer "sullabus_id", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.integer  "course"
    t.integer  "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.float    "mark"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "header"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.boolean  "visibility"
    t.string   "header"
    t.text     "contents"
    t.string   "alias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages_pages", id: false, force: :cascade do |t|
    t.integer "page_id", null: false
  end

  create_table "pages_subjects", id: false, force: :cascade do |t|
    t.integer "page_id",    null: false
    t.integer "subject_id", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.integer  "offset"
    t.integer  "min_offset"
    t.integer  "max_offset"
    t.boolean  "necessarily"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "second_name"
    t.date     "b_date"
    t.string   "number_of_books"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.string   "type_of_reporting"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.integer "subject_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "syllabuses", force: :cascade do |t|
    t.string   "code"
    t.string   "title"
    t.float    "level"
    t.string   "form_of_study"
    t.date     "training_period"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "degree"
    t.string   "rank"
    t.string   "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
