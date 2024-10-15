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

ActiveRecord::Schema[7.1].define(version: 2024_10_15_155112) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "regin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regin_id"], name: "index_countries_on_regin_id"
  end

  create_table "record_dates", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "temperatures", force: :cascade do |t|
    t.string "avg_temp"
    t.integer "record_date_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_temperatures_on_city_id"
    t.index ["record_date_id"], name: "index_temperatures_on_record_date_id"
  end

  create_table "weathers", force: :cascade do |t|
    t.string "weather"
    t.integer "record_date_id", null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_weathers_on_city_id"
    t.index ["record_date_id"], name: "index_weathers_on_record_date_id"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "countries", "regins"
  add_foreign_key "states", "countries"
  add_foreign_key "temperatures", "cities"
  add_foreign_key "temperatures", "record_dates"
  add_foreign_key "weathers", "cities"
  add_foreign_key "weathers", "record_dates"
end
