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

ActiveRecord::Schema.define(:version => 20140715060139) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => ""
    t.string   "login",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["login"], :name => "index_admins_on_login", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "weixin_accounts", :force => true do |t|
    t.string   "name"
    t.string   "weixin_id"
    t.string   "weixin_secret_key"
    t.string   "weixin_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "weixin_accounts", ["weixin_secret_key"], :name => "index_weixin_accounts_on_weixin_secret_key"
  add_index "weixin_accounts", ["weixin_token"], :name => "index_weixin_accounts_on_weixin_token"

  create_table "weixin_menus", :force => true do |t|
    t.string   "name"
    t.integer  "weixin_account_id"
    t.integer  "parent_id"
    t.string   "key"
    t.string   "url"
    t.boolean  "enable"
    t.integer  "position"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "weixin_menus", ["key"], :name => "index_weixin_menus_on_key"
  add_index "weixin_menus", ["parent_id"], :name => "index_weixin_menus_on_parent_id"
  add_index "weixin_menus", ["weixin_account_id"], :name => "index_weixin_menus_on_weixin_account_id"

end
