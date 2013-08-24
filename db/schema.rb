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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130823035458) do

  create_table "account_payables", :force => true do |t|
    t.string   "social_reason"
    t.string   "nit"
    t.date     "from"
    t.date     "to"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "account_receivables", :force => true do |t|
    t.string   "name"
    t.string   "identification"
    t.date     "from"
    t.date     "to"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "banks", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "address"
    t.string   "phone"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cash_receipts", :force => true do |t|
    t.date     "date"
    t.text     "observations"
    t.boolean  "state"
    t.string   "retention"
    t.string   "customer"
    t.string   "concept"
    t.string   "movement_number"
    t.string   "value"
    t.integer  "payment_id"
    t.integer  "bank_origin_id"
    t.integer  "destination_bank_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "cash_receipts", ["bank_origin_id"], :name => "index_cash_receipts_on_bank_origin_id"
  add_index "cash_receipts", ["destination_bank_id"], :name => "index_cash_receipts_on_destination_bank_id"
  add_index "cash_receipts", ["payment_id"], :name => "index_cash_receipts_on_payment_id"

  create_table "cost_centers", :force => true do |t|
    t.string   "cost_center"
    t.string   "code"
    t.boolean  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "document_id"
    t.string   "number_document"
    t.string   "name"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "address"
    t.string   "email"
    t.boolean  "state"
    t.string   "credit_quota"
    t.string   "restricted_quota"
    t.string   "space_available"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "customers", ["document_id"], :name => "index_customers_on_document_id"

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "form_of_payments", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "history_of_vehicles", :force => true do |t|
    t.string   "plate"
    t.string   "customer"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labors", :force => true do |t|
    t.text     "description"
    t.integer  "cost_center_id"
    t.string   "sale_price"
    t.string   "quantity"
    t.integer  "mechanical_id"
    t.string   "iva"
    t.string   "discount"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "labors", ["cost_center_id"], :name => "index_labors_on_cost_center_id"
  add_index "labors", ["mechanical_id"], :name => "index_labors_on_mechanical_id"

  create_table "mechanicals", :force => true do |t|
    t.integer  "document_id"
    t.string   "name"
    t.string   "surname"
    t.string   "work"
    t.boolean  "type"
    t.boolean  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "mechanicals", ["document_id"], :name => "index_mechanicals_on_document_id"

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "sale_by_cost_centers", :force => true do |t|
    t.date     "from"
    t.date     "to"
    t.integer  "cost_center_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "sale_by_cost_centers", ["cost_center_id"], :name => "index_sale_by_cost_centers_on_cost_center_id"

  create_table "shoppings", :force => true do |t|
    t.string   "supplier"
    t.date     "date"
    t.boolean  "state"
    t.string   "vendor_invoice"
    t.text     "concept"
    t.string   "value"
    t.string   "quantity"
    t.string   "iva"
    t.string   "discount"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "spares", :force => true do |t|
    t.text     "description"
    t.integer  "cost_center_id"
    t.string   "purchase_price"
    t.string   "selling_price"
    t.string   "quantity"
    t.string   "iva"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "spares", ["cost_center_id"], :name => "index_spares_on_cost_center_id"

  create_table "suppliers", :force => true do |t|
    t.integer  "document_id"
    t.string   "social_reason"
    t.string   "phone_one"
    t.string   "phone_two"
    t.string   "address"
    t.string   "email"
    t.boolean  "state"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "suppliers", ["document_id"], :name => "index_suppliers_on_document_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "work_orders", :force => true do |t|
    t.integer  "document_id"
    t.string   "address"
    t.string   "plate"
    t.string   "phone"
    t.string   "movil"
    t.string   "brand"
    t.date     "date_received"
    t.string   "type"
    t.date     "delivery_date"
    t.string   "model"
    t.string   "color"
    t.string   "mileage"
    t.date     "expiration_date"
    t.string   "vehicle"
    t.string   "diamond"
    t.boolean  "state"
    t.integer  "inventory_id"
    t.string   "total_labor"
    t.string   "parts_total_value"
    t.text     "client_feedback"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "work_orders", ["document_id"], :name => "index_work_orders_on_document_id"
  add_index "work_orders", ["inventory_id"], :name => "index_work_orders_on_inventory_id"

end
