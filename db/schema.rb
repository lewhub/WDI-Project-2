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

ActiveRecord::Schema.define(version: 20160225055328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string   "price"
    t.integer  "worker_count"
    t.string   "chore_title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "chore_type"
    t.integer  "order_id"
  end

  add_index "chores", ["order_id"], name: "index_chores_on_order_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "history"
    t.string   "name"
    t.string   "password_digest"
    t.string   "credit_card_info"
    t.string   "cart"
    t.string   "my_chores"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "order_id"
  end

  add_index "customers", ["order_id"], name: "index_customers_on_order_id", using: :btree

  create_table "customers_orders", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "order_id",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.string   "payment"
    t.string   "expected_start_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "customer_id"
    t.integer  "chore_id"
    t.integer  "worker_id"
  end

  create_table "orders_workers", id: false, force: :cascade do |t|
    t.integer "worker_id", null: false
    t.integer "order_id",  null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "name"
    t.string   "profile"
    t.string   "password_digest"
    t.string   "reccurring_customers"
    t.string   "availability"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "order_id"
  end

  add_index "workers", ["order_id"], name: "index_workers_on_order_id", using: :btree

  add_foreign_key "chores", "orders"
  add_foreign_key "customers", "orders"
  add_foreign_key "workers", "orders"
end
