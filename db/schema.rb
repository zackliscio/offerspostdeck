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

ActiveRecord::Schema.define(:version => 20121012215754) do

  create_table "decks", :force => true do |t|
    t.integer  "offersSold"
    t.string   "merchantRevenue"
    t.float    "wk1Redeem"
    t.float    "wk2Redeem"
    t.float    "wk3Redeem"
    t.float    "wk4Redeem"
    t.string   "emailOpens"
    t.string   "visitors"
    t.float    "mobileVisits"
    t.float    "desktopVisits"
    t.float    "mobilePurchases"
    t.float    "desktopPurchases"
    t.string   "plus1s"
    t.string   "likes"
    t.string   "tweets"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "merchantName"
    t.string   "malePurchases"
    t.string   "femalePurchases"
    t.float    "day1purch"
    t.float    "day2purch"
    t.float    "day3purch"
    t.float    "day4purch"
    t.float    "day5purch"
    t.float    "day1visit"
    t.float    "day2visit"
    t.float    "day3visit"
    t.float    "day4visit"
    t.float    "day5visit"
    t.float    "a18to24"
    t.float    "a25to34"
    t.float    "a35to44"
    t.float    "a45to54"
    t.float    "a55to64"
    t.float    "a65plus"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "perves", :force => true do |t|
    t.string   "company"
    t.string   "number_sold"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "post_decks", :force => true do |t|
    t.string   "merchant"
    t.string   "number_sold"
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
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
