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

ActiveRecord::Schema.define(:version => 20130329144920) do

  create_table "products", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.string  "image"
    t.float   "cost"
    t.float   "latitude",    :default => 0.0
    t.float   "longitude",   :default => 0.0
    t.text    "address"
    t.integer "user_id"
  end

  create_table "products_tags", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.float    "balance"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
