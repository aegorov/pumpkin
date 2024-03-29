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

ActiveRecord::Schema.define(:version => 20111111012007) do

  create_table "boiler_rooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total",      :default => 0
  end

  create_table "consumers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total",      :default => 0
  end

  create_table "transactions", :force => true do |t|
    t.integer  "boiler_room_id"
    t.integer  "consumer_id"
    t.integer  "value"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",         :default => "send"
  end

end
