# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_27_152136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliments", force: :cascade do |t|
    t.string "name"
    t.text "infos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredient_to_buys", force: :cascade do |t|
    t.bigint "shopping_list_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_ingredient_to_buys_on_meal_id"
    t.index ["shopping_list_id"], name: "index_ingredient_to_buys_on_shopping_list_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "aliment_id", null: false
    t.bigint "meal_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aliment_id"], name: "index_ingredients_on_aliment_id"
    t.index ["meal_id"], name: "index_ingredients_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shopping_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredient_to_buys", "meals"
  add_foreign_key "ingredient_to_buys", "shopping_lists"
  add_foreign_key "ingredients", "aliments"
  add_foreign_key "ingredients", "meals"
  add_foreign_key "meals", "users"
  add_foreign_key "shopping_lists", "users"
end
