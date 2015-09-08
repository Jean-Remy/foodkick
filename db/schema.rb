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

ActiveRecord::Schema.define(version: 20150908101302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "category"
    t.integer  "price"
    t.string   "name"
    t.string   "description"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "courses", ["restaurant_id"], name: "index_courses_on_restaurant_id", using: :btree

  create_table "feedback_answers", force: :cascade do |t|
    t.integer  "reservation_id"
    t.integer  "feedback_question_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "answer"
  end

  add_index "feedback_answers", ["feedback_question_id"], name: "index_feedback_answers_on_feedback_question_id", using: :btree
  add_index "feedback_answers", ["reservation_id"], name: "index_feedback_answers_on_reservation_id", using: :btree

  create_table "feedback_questions", force: :cascade do |t|
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
    t.string   "general_exp"
    t.string   "food"
    t.string   "service"
    t.string   "quality_to_price"
    t.string   "vibes"
    t.integer  "reservation_id"
    t.integer  "general_exp_rating"
    t.integer  "food_rating"
    t.integer  "service_rating"
    t.integer  "quality_to_price_rating"
    t.integer  "vibes_rating"
  end

  add_index "feedbacks", ["reservation_id"], name: "index_feedbacks_on_reservation_id", using: :btree
  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.string   "code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "feedbacked"
    t.datetime "limit"
    t.boolean  "status"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", using: :btree
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "borough"
    t.string   "category"
    t.string   "phone"
    t.string   "email"
    t.text     "description"
    t.integer  "price_min"
    t.integer  "price_max"
    t.float    "discount"
    t.string   "discount_detail"
    t.string   "menu_title"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "seed_picture"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.date     "opening"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "views",                default: 0
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "day_num"
    t.string   "day_name"
    t.time     "opening_hour"
    t.time     "closing_hour"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "schedules", ["restaurant_id"], name: "index_schedules_on_restaurant_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "active"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean  "owner"
    t.integer  "restaurant_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "can_book"
    t.boolean  "italian"
    t.boolean  "french"
    t.boolean  "japanese"
    t.boolean  "thai"
    t.boolean  "viet"
    t.boolean  "bastille"
    t.boolean  "notre_dame"
    t.boolean  "marais"
    t.boolean  "villette"
    t.boolean  "abbesses"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["restaurant_id"], name: "index_users_on_restaurant_id", using: :btree

  add_foreign_key "courses", "restaurants"
  add_foreign_key "feedback_answers", "feedback_questions"
  add_foreign_key "feedback_answers", "reservations"
  add_foreign_key "feedbacks", "reservations"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "reservations", "restaurants"
  add_foreign_key "reservations", "users"
  add_foreign_key "schedules", "restaurants"
end
