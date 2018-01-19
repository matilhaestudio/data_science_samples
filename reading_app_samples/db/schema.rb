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

ActiveRecord::Schema.define(version: 20180103165409) do

  create_table "conversions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_gender"
    t.integer  "user_age"
    t.integer  "product_id"
    t.integer  "category_id"
    t.float    "price"
    t.integer  "weekday_id"
    t.integer  "hour_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_gender"
    t.integer  "user_age"
    t.integer  "article_id"
    t.integer  "category_id"
    t.float    "avg_expending"
    t.integer  "weekday_id"
    t.integer  "hour_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
