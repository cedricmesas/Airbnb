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

ActiveRecord::Schema.define(version: 2021_05_06_195253) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "dogs_strolls", id: false, force: :cascade do |t|
    t.integer "dog_id", null: false
    t.integer "stroll_id", null: false
    t.index ["dog_id", "stroll_id"], name: "index_dogs_strolls_on_dog_id_and_stroll_id"
    t.index ["stroll_id", "dog_id"], name: "index_dogs_strolls_on_stroll_id_and_dog_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dogsitters_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dogsitter_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

  add_foreign_key "dogs", "cities"
  add_foreign_key "dogs_strolls", "dogs"
  add_foreign_key "dogs_strolls", "strolls"
  add_foreign_key "dogsitters", "cities"
  add_foreign_key "strolls", "cities"
  add_foreign_key "strolls", "dogsitters"
end
