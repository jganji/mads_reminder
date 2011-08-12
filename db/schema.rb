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

ActiveRecord::Schema.define(:version => 20110803025332) do

  create_table "appointments", :force => true do |t|
    t.string   "business_guid"
    t.string   "customer_name"
    t.string   "customer_phone"
    t.date     "appointment_date"
    t.datetime "appointment_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_users", :force => true do |t|
    t.string   "business_guid"
    t.string   "business_name"
    t.string   "business_contact"
    t.string   "business_email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
