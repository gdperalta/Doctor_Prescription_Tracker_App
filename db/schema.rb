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

ActiveRecord::Schema.define(version: 2022_03_22_152226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_name"
    t.string "doctor_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "specialization"
    t.string "hospital"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "meds_name"
    t.integer "meds_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "meds_category"
  end

  create_table "presc_medicines", force: :cascade do |t|
    t.bigint "prescription_id", null: false
    t.bigint "medicine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "discount", default: 0
    t.index ["medicine_id"], name: "index_presc_medicines_on_medicine_id"
    t.index ["prescription_id"], name: "index_presc_medicines_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.float "total_cost"
    t.bigint "doctor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.text "description"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  add_foreign_key "presc_medicines", "medicines"
  add_foreign_key "presc_medicines", "prescriptions"
  add_foreign_key "prescriptions", "doctors"
end
