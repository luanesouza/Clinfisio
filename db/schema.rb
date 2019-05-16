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

ActiveRecord::Schema.define(version: 2019_05_16_213321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "patient_name"
    t.integer "patient_id"
    t.integer "doctor_id"
    t.string "doctor_name"
    t.string "date"
    t.string "time"
    t.integer "session_id"
    t.string "session_type"
    t.boolean "patient_present"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_first_name"
    t.string "doctor_last_name"
    t.string "doctor_email"
    t.string "doctor_password_digest"
    t.string "doctor_specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "expense_date"
    t.string "expense_type"
    t.integer "expense_amount"
    t.string "expense_doc_number"
    t.integer "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_first_name"
    t.string "patient_last_name"
    t.string "patient_phone_number"
    t.string "diagnose"
    t.string "address"
    t.string "cpf_rg"
    t.string "dob"
    t.string "insurance"
    t.integer "invoice_days"
    t.string "enrollment_number"
    t.string "disease_classification"
    t.string "pass_number"
    t.string "doctor_petitioner"
    t.string "clinic_petitioner"
    t.string "federal_medicine_council"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_type"
    t.integer "session_qnty"
    t.boolean "session_bilateral"
    t.string "session_price"
    t.integer "evaluation_price"
    t.boolean "discount"
    t.integer "discount_price"
    t.boolean "patient_dependent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
