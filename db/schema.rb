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

ActiveRecord::Schema.define(version: 2019_10_02_025410) do

  create_table "answer_scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "answer_id"
    t.integer "answer_score", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.text "answer_content"
    t.boolean "best_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "answer_id"
    t.text "answer_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "example_scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "example_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.integer "user_id"
    t.string "example_title"
    t.text "example_content"
    t.text "example_answer"
    t.boolean "example_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "question_status", default: "未回答"
    t.text "premise"
    t.text "error"
    t.text "try"
    t.text "content"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.text "profile_image_id"
    t.boolean "admin", default: false
    t.string "name"
    t.text "introduction"
    t.integer "score", default: 0, null: false
    t.boolean "status"
    t.boolean "push_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
