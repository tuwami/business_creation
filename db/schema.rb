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

ActiveRecord::Schema.define(version: 2020_06_28_084406) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "histories", force: :cascade do |t|
    t.integer "team_id"
    t.float "fund", default: 0.0
    t.integer "employee", default: 0
    t.integer "novice", default: 0
    t.float "profit", default: 0.0
    t.float "earning", default: 0.0
    t.float "budget_earning", default: 0.0
    t.float "balance_earning", default: 0.0
    t.integer "recruiting", default: 0
    t.integer "each_market_employee", default: 0
    t.integer "investment_id"
    t.integer "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_histories_on_team_id"
  end

  create_table "investments", force: :cascade do |t|
    t.integer "market_id"
    t.integer "team_id"
    t.integer "budget", default: 0
    t.integer "assigning", default: 0
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_masters", force: :cascade do |t|
    t.string "market_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", force: :cascade do |t|
    t.integer "market_master_id"
    t.integer "team_id"
    t.float "market_earning", default: 0.0
    t.float "market_budget_earning", default: 0.0
    t.float "market_balance_earning", default: 0.0
    t.integer "market_recruiting", default: 0
    t.integer "market_employee", default: 0
    t.integer "balance", default: 0
    t.integer "default_each_market_employee", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.float "current_fund", default: 100.0
    t.integer "current_employee", default: 10
    t.integer "current_novice", default: 9
    t.float "current_profit", default: 0.0
    t.float "origin_fund", default: 100.0
    t.integer "investment_limit", default: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
