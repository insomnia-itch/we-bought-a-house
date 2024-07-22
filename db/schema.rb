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

ActiveRecord::Schema[7.1].define(version: 2024_07_22_051157) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "contractors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id", null: false
    t.uuid "project_id", null: false
    t.integer "time_estimate", default: 0, null: false
    t.integer "price_estimate", default: 0, null: false
    t.integer "running_cost", default: 0, null: false
    t.boolean "accepted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id"
    t.index ["project_id"], name: "index_contracts_on_project_id"
  end

  create_table "houses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.uuid "lister_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lister_id"], name: "index_houses_on_lister_id"
  end

  create_table "ownerships", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "owner_id", null: false
    t.uuid "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_ownerships_on_house_id"
    t.index ["owner_id"], name: "index_ownerships_on_owner_id"
  end

  create_table "prerequisites", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "required_project_id", null: false
    t.uuid "locked_project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locked_project_id"], name: "index_prerequisites_on_locked_project_id"
    t.index ["required_project_id"], name: "index_prerequisites_on_required_project_id"
  end

  create_table "projects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.date "desired_completion_date"
    t.integer "running_cost", default: 0, null: false
    t.uuid "house_id", null: false
    t.integer "budget", default: 0, null: false
    t.date "estimated_completion_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_projects_on_house_id"
  end

  create_table "skills", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specializations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id", null: false
    t.uuid "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_specializations_on_contractor_id"
    t.index ["skill_id"], name: "index_specializations_on_skill_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contracts", "contractors"
  add_foreign_key "contracts", "projects"
  add_foreign_key "houses", "users", column: "lister_id"
  add_foreign_key "ownerships", "houses"
  add_foreign_key "ownerships", "users", column: "owner_id"
  add_foreign_key "prerequisites", "projects", column: "locked_project_id"
  add_foreign_key "prerequisites", "projects", column: "required_project_id"
  add_foreign_key "projects", "houses"
  add_foreign_key "specializations", "contractors"
  add_foreign_key "specializations", "skills"
end
