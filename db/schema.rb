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

ActiveRecord::Schema.define(version: 20140531125549) do

  create_table "accepts", force: true do |t|
    t.integer  "questionid"
    t.string   "option_retrieved"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isright"
    t.integer  "test_id"
  end

  add_index "accepts", ["test_id"], name: "index_accepts_on_test_id"

  create_table "addimages", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "title"
    t.text     "information"
    t.text     "instruction"
    t.text     "hint"
    t.string   "solution_code"
    t.string   "default_code"
    t.integer  "tutorial_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "details"
    t.string   "language_type"
    t.string   "compile_procedure"
    t.string   "execute_procedure"
    t.string   "file_extension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.text     "optionA"
    t.text     "optionB"
    t.text     "optionC"
    t.text     "optionD"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "q_nos", force: true do |t|
    t.integer  "no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "name"
    t.text     "correct_choice"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "language_id"
    t.integer  "user_id"
  end

  add_index "questions", ["language_id"], name: "index_questions_on_language_id"

  create_table "settests", force: true do |t|
    t.integer  "question_id"
    t.integer  "test_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "marks"
    t.float    "ability"
  end

  create_table "tutorials", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "tutorials", ["user_id"], name: "index_tutorials_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "role"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
