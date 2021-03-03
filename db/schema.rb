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

ActiveRecord::Schema.define(version: 2021_03_02_145854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "birth_date"
    t.boolean "alive", default: true
    t.float "weight"
    t.float "heigh"
    t.float "head_circumference"
    t.string "sex"
    t.boolean "monitoring", default: false
    t.string "monitoring_options", default: [], array: true
    t.boolean "intensivecare", default: false
    t.string "intensivecare_options", default: [], array: true
    t.boolean "malformation", default: false
    t.boolean "infectiouscontext", default: false
    t.string "infectiouscontext_options", default: [], array: true
    t.string "exit_room"
    t.string "breastfeeding"
    t.boolean "pathology", default: false
    t.string "pathologies", default: [], array: true
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
    t.string "category"
    t.text "diagnostic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labour_codes", force: :cascade do |t|
    t.text "diagnostic"
    t.bigint "labour_id", null: false
    t.bigint "code_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code_id"], name: "index_labour_codes_on_code_id"
    t.index ["labour_id"], name: "index_labour_codes_on_labour_id"
  end

  create_table "labours", force: :cascade do |t|
    t.datetime "labour_start_at"
    t.string "labour_start"
    t.string "labour_end"
    t.datetime "labour_end_at"
    t.string "artificial_labour"
    t.string "labour_drugs", default: [], array: true
    t.string "anaesthesia_category"
    t.string "anaesthesia_general"
    t.string "anaesthesia_loco_general"
    t.string "anaesthesia_moment"
    t.string "labour_complication_type", default: [], array: true
    t.string "labour_actes", default: [], array: true
    t.boolean "anaesthesia", default: false
    t.boolean "anaesthesia_complication", default: false
    t.boolean "caesarean", default: false
    t.boolean "labour_complication", default: false
    t.boolean "labour_actes_done", default: false
    t.bigint "patient_id", null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_labours_on_category_id"
    t.index ["patient_id"], name: "index_labours_on_patient_id"
    t.index ["user_id"], name: "index_labours_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.date "birth_date"
    t.string "nss"
    t.string "blood_group"
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
    t.string "first_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "babies", "patients"
  add_foreign_key "labour_codes", "codes"
  add_foreign_key "labour_codes", "labours"
  add_foreign_key "labours", "categories"
  add_foreign_key "labours", "patients"
  add_foreign_key "labours", "users"
end
