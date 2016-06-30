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

ActiveRecord::Schema.define(version: 20160604010049) do

  create_table "clicks", force: :cascade do |t|
    t.string   "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                     default: "", null: false
    t.string   "encrypted_password",        default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "age"
    t.integer  "gender"
    t.string   "cellphone"
    t.string   "ocupation"
    t.text     "no_contract_activities"
    t.string   "felixibility_importance"
    t.integer  "need_income"
    t.integer  "current_income"
    t.text     "achievement"
    t.integer  "achievement_acomplishment"
    t.text     "achievement_company"
    t.text     "achievement_boss"
    t.text     "achievement_phone"
    t.text     "hobby"
    t.integer  "hobby_time"
    t.boolean  "hobby_validate"
    t.string   "special_experience"
    t.integer  "work_hours"
    t.integer  "work_days"
    t.text     "personal_achievement"
    t.text     "story"
    t.string   "pc_type"
    t.string   "pc_use"
    t.string   "internet_speed"
    t.string   "can_talk"
    t.string   "workplace"
    t.string   "comfort"
    t.integer  "role"
    t.string   "video"
    t.string   "active"
    t.integer  "fase"
    t.boolean  "video_done"
    t.string   "approved"
    t.string   "time_count"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
