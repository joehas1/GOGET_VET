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


ActiveRecord::Schema.define(version: 2019_11_19_210440) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointed_pets", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointed_pets_on_appointment_id"
    t.index ["pet_id"], name: "index_appointed_pets_on_pet_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_time"
    t.string "description"
    t.string "address"
    t.boolean "approved"
    t.bigint "vet_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["vet_id"], name: "index_appointments_on_vet_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "languages"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "favorited_vets", force: :cascade do |t|
    t.bigint "vet_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_favorited_vets_on_client_id"
    t.index ["vet_id"], name: "index_favorited_vets_on_vet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "history"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vets", force: :cascade do |t|
    t.string "address"
    t.string "availability"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "languages"
    t.integer "rate"
    t.index ["user_id"], name: "index_vets_on_user_id"
  end

  add_foreign_key "appointed_pets", "appointments"
  add_foreign_key "appointed_pets", "pets"
  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "vets"
  add_foreign_key "clients", "users"
  add_foreign_key "favorited_vets", "clients"
  add_foreign_key "favorited_vets", "vets"
  add_foreign_key "pets", "clients"
  add_foreign_key "vets", "users"
end
