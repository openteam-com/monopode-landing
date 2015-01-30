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

ActiveRecord::Schema.define(version: 20150130042930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meta_descriptions", force: true do |t|
    t.string   "title"
    t.string   "h1"
    t.text     "keywords"
    t.text     "description"
    t.string   "og_title"
    t.text     "og_description"
    t.text     "introduction"
    t.string   "og_image_file_name"
    t.string   "og_image_content_type"
    t.string   "og_image_file_size"
    t.string   "og_image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "action_text"
    t.string   "action_discount"
  end

  create_table "orders", force: true do |t|
    t.integer  "quantity"
    t.string   "address"
    t.string   "city"
    t.string   "delivery_method"
    t.string   "email"
    t.string   "full_name"
    t.string   "payment_status",  default: "Ожидается оплата"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_orders", force: true do |t|
    t.string   "full_name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "value_storages", force: true do |t|
    t.string  "title"
    t.integer "value", default: 683
  end

end
