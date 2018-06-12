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

ActiveRecord::Schema.define(version: 2018_06_11_200536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_cohorts_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.float "hours_in_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.float "salary"
    t.string "highest_completed_education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "highest_completed_education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_cohorts", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_students_cohorts_on_cohort_id"
    t.index ["student_id"], name: "index_students_cohorts_on_student_id"
  end

  add_foreign_key "cohorts", "courses"
  add_foreign_key "students_cohorts", "cohorts"
  add_foreign_key "students_cohorts", "students"
end
