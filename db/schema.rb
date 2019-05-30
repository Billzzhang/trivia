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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_02_23_013927) do
=======
ActiveRecord::Schema.define(version: 2019_02_21_210730) do

  create_table "Categories_Users", id: false, force: :cascade do |t|
    t.integer "User_id", null: false
    t.integer "Category_id", null: false
  end
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "correct_answers", force: :cascade do |t|
    t.string "name"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_correct_answers_on_question_id"
  end

  create_table "difficulties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incorrect_answers", force: :cascade do |t|
    t.string "answer"
<<<<<<< HEAD
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_id"
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
    t.index ["question_id"], name: "index_incorrect_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
<<<<<<< HEAD
    t.integer "category_id"
    t.integer "difficulty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "difficulty_id"
    t.integer "category_id"
>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["difficulty_id"], name: "index_questions_on_difficulty_id"
  end

<<<<<<< HEAD
=======
  create_table "responses", force: :cascade do |t|
    t.string "text"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
end
