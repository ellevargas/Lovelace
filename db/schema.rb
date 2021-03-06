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

ActiveRecord::Schema.define(version: 20170122235328) do

  create_table "adies", force: :cascade do |t|
    t.string   "cohort"
    t.string   "pref_pronouns"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "twitter_handle"
    t.string   "linkedin"
    t.string   "github_username"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "internship_company"
    t.string   "current_company"
    t.string   "adie_image"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_id"
    t.string   "company_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "business_field"
    t.string   "website"
    t.string   "logo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "job_title"
    t.string   "pref_pronouns"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "twitter_handle"
    t.string   "linkedin"
    t.string   "github_username"
    t.string   "staff_image"
    t.string   "expertise_areas"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
