# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2022_06_22_081827) do
=======
ActiveRecord::Schema[7.0].define(version: 2022_06_21_113440) do
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
<<<<<<< HEAD
    t.string "body", null: false
    t.integer "question_id", null: false
=======
    t.string "body"
    t.integer "question_id"
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
<<<<<<< HEAD
    t.string "title", null: false
=======
    t.string "title"
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
<<<<<<< HEAD
    t.string "body", null: false
    t.integer "test_id", null: false
=======
    t.string "body"
    t.integer "test_id"
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
<<<<<<< HEAD
    t.string "title", null: false
    t.integer "level", null: false
=======
    t.string "title"
    t.integer "level"
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
<<<<<<< HEAD
    t.string "login", null: false
    t.string "password", null: false
=======
    t.string "login"
    t.string "password"
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
