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

ActiveRecord::Schema[7.1].define(version: 2024_10_21_142318) do
  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "Region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.date "date"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "temperatures", force: :cascade do |t|
    t.float "avg_temp"
    t.date "date"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_temperatures_on_city_id"
  end

  create_table "temperatures_comments", id: false, force: :cascade do |t|
    t.integer "temperature_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_temperatures_comments_on_comment_id"
    t.index ["temperature_id"], name: "index_temperatures_comments_on_temperature_id"
  end

  create_table "temperatures_users", id: false, force: :cascade do |t|
    t.integer "temperature_id"
    t.integer "user_id"
    t.index ["temperature_id"], name: "index_temperatures_users_on_temperature_id"
    t.index ["user_id"], name: "index_temperatures_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "users"
  add_foreign_key "temperatures", "cities"
end
