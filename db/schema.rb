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

ActiveRecord::Schema.define(version: 20160206213351) do

  create_table "allocation_assignments", force: :cascade do |t|
    t.string   "vendor_name"
    t.string   "location_code"
    t.string   "allocation_method"
    t.string   "allocation_basis"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date     "gl_date"
    t.string   "account_code"
    t.string   "location_code"
    t.string   "department_code"
    t.string   "company_code"
    t.float    "net_amount"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "vendor_name"
    t.string   "allocation_basis"
    t.integer  "allocation_assignment_id"
    t.date     "period"
  end

  create_table "rooftop_allocations", force: :cascade do |t|
    t.string   "allocation_basis"
    t.date     "period"
    t.string   "product"
    t.decimal  "allocation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rooftops", force: :cascade do |t|
    t.date     "period"
    t.string   "product"
    t.integer  "rooftops"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
