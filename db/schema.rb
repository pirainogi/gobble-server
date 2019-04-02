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

ActiveRecord::Schema.define(version: 2019_04_02_125251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "eventStart"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "eventType"
    t.string "name"
    t.datetime "eventEnd"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "imgurl"
    t.string "aisle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mealevents", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_mealevents_on_event_id"
    t.index ["recipe_id"], name: "index_mealevents_on_recipe_id"
  end

  create_table "pantries", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ingredient_id"
    t.boolean "in_stock"
    t.boolean "grocerylist"
    t.integer "amount"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_pantries_on_ingredient_id"
    t.index ["user_id"], name: "index_pantries_on_user_id"
  end

  create_table "prepevents", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_prepevents_on_event_id"
    t.index ["recipe_id"], name: "index_prepevents_on_recipe_id"
  end

  create_table "recipeboxes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipeboxes_on_recipe_id"
    t.index ["user_id"], name: "index_recipeboxes_on_user_id"
  end

  create_table "recipeingredients", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "ingredient_id"
    t.string "unit"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_recipeingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipeingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "imgurl"
    t.text "instructions"
    t.integer "preptime"
    t.string "dishType"
    t.string "sourceUrl"
    t.integer "servings"
    t.boolean "whole30"
    t.boolean "keto"
    t.boolean "dairyFree"
    t.boolean "glutenFree"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "healthy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopevents", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "ingredient_id"
    t.integer "amount"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_shopevents_on_event_id"
    t.index ["ingredient_id"], name: "index_shopevents_on_ingredient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "profile_pic"
    t.text "bio"
    t.string "allergies"
    t.string "diet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
