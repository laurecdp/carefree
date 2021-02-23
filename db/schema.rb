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

ActiveRecord::Schema.define(version: 2021_02_23_153904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_codes", force: :cascade do |t|
    t.bigint "action_id", null: false
    t.bigint "code_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["action_id"], name: "index_action_codes_on_action_id"
    t.index ["code_id"], name: "index_action_codes_on_code_id"
  end

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.bigint "patient_id", null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "startoflabour"
    t.string "labourdate"
    t.string "drugslabour"
    t.string "endoflabour"
    t.string "anaesthesia"
    t.index ["category_id"], name: "index_actions_on_category_id"
    t.index ["patient_id"], name: "index_actions_on_patient_id"
    t.index ["user_id"], name: "index_actions_on_user_id"
  end

  create_table "babies", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.boolean "alive", default: true
    t.text "description"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_babies_on_patient_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "codes", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.float "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.date "birth_date"
    t.string "nss"
    t.text "description"
    t.integer "number_of_weeks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "action_codes", "actions"
  add_foreign_key "action_codes", "codes"
  add_foreign_key "actions", "categories"
  add_foreign_key "actions", "patients"
  add_foreign_key "actions", "users"
  add_foreign_key "babies", "patients"
end
