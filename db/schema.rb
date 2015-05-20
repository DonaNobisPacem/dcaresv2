# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150520102342) do

  create_table "can_edits", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "university_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "can_edits", ["university_id"], name: "index_can_edits_on_university_id", using: :btree
  add_index "can_edits", ["user_id"], name: "index_can_edits_on_user_id", using: :btree

  create_table "contractors", force: :cascade do |t|
    t.integer  "contractable_id",   limit: 4
    t.string   "contractable_type", limit: 255
    t.string   "contractor_name",   limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "contractors", ["contractable_type", "contractable_id"], name: "index_contractors_on_contractable_type_and_contractable_id", using: :btree

  create_table "fund_sources", force: :cascade do |t|
    t.string   "source_name",   limit: 255
    t.integer  "fundable_id",   limit: 4
    t.string   "fundable_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "fund_sources", ["fundable_type", "fundable_id"], name: "index_fund_sources_on_fundable_type_and_fundable_id", using: :btree

  create_table "project_components", force: :cascade do |t|
    t.integer  "project_id",                limit: 4
    t.string   "component_name",            limit: 255
    t.text     "description",               limit: 65535
    t.text     "expected_outcome",          limit: 65535
    t.text     "remarks",                   limit: 65535
    t.decimal  "percent_accomplishment",                  precision: 16, scale: 2
    t.datetime "percent_accomplishment_by"
    t.text     "bidding_contractor",        limit: 65535
    t.integer  "bidding_number",            limit: 4
    t.datetime "bidding_award"
    t.datetime "bidding_proceed"
    t.decimal  "financial_budget",                        precision: 16, scale: 2
    t.decimal  "financial_contract_price",                precision: 16, scale: 2
    t.decimal  "financial_actual_cost",                   precision: 16, scale: 2
    t.string   "financial_source",          limit: 255
    t.datetime "timeline_target_start"
    t.datetime "timeline_target_end"
    t.datetime "timeline_actual_start"
    t.datetime "timeline_actual_end"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
  end

  add_index "project_components", ["project_id"], name: "index_project_components_on_project_id", using: :btree

  create_table "project_images", force: :cascade do |t|
    t.integer  "project_id",  limit: 4
    t.string   "image",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "project_phases", force: :cascade do |t|
    t.integer  "project_id",                limit: 4
    t.string   "phase_name",                limit: 255
    t.text     "description",               limit: 65535
    t.text     "expected_outcome",          limit: 65535
    t.text     "remarks",                   limit: 65535
    t.decimal  "percent_accomplishment",                  precision: 16, scale: 2
    t.datetime "percent_accomplishment_by"
    t.text     "bidding_contractor",        limit: 65535
    t.integer  "bidding_number",            limit: 4
    t.datetime "bidding_award"
    t.datetime "bidding_proceed"
    t.decimal  "financial_budget",                        precision: 16, scale: 2
    t.decimal  "financial_contract_price",                precision: 16, scale: 2
    t.decimal  "financial_actual_cost",                   precision: 16, scale: 2
    t.string   "financial_source",          limit: 255
    t.datetime "timeline_target_start"
    t.datetime "timeline_target_end"
    t.datetime "timeline_actual_start"
    t.datetime "timeline_actual_end"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
  end

  add_index "project_phases", ["project_id"], name: "index_project_phases_on_project_id", using: :btree

  create_table "project_statuses", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name",              limit: 255
    t.string   "project_code",              limit: 255
    t.text     "description",               limit: 65535
    t.text     "expected_outcome",          limit: 65535
    t.text     "remarks",                   limit: 65535
    t.decimal  "percent_accomplishment",                  precision: 16, scale: 2
    t.datetime "percent_accomplishment_by"
    t.text     "bidding_contractor",        limit: 65535
    t.integer  "bidding_number",            limit: 4
    t.datetime "bidding_award"
    t.datetime "bidding_proceed"
    t.decimal  "financial_budget",                        precision: 16, scale: 2
    t.decimal  "financial_contract_price",                precision: 16, scale: 2
    t.decimal  "financial_actual_cost",                   precision: 16, scale: 2
    t.string   "financial_source",          limit: 255
    t.datetime "timeline_target_start"
    t.datetime "timeline_target_end"
    t.datetime "timeline_actual_start"
    t.datetime "timeline_actual_end"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.integer  "university_id",             limit: 4
    t.integer  "status",                    limit: 4
    t.datetime "completed_by"
  end

  add_index "projects", ["university_id"], name: "index_projects_on_university_id", using: :btree

  create_table "universities", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "university_name", limit: 255
    t.string   "university_code", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  limit: 1,   default: false
    t.boolean  "approved",               limit: 1,   default: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.integer  "designation",            limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "can_edits", "universities"
  add_foreign_key "can_edits", "users"
  add_foreign_key "project_components", "projects"
  add_foreign_key "project_phases", "projects"
  add_foreign_key "projects", "universities"
end
