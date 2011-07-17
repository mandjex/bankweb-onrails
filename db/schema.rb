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

ActiveRecord::Schema.define(:version => 20110703124049) do

  create_table "accounts", :force => true do |t|
    t.integer  "number"
    t.decimal  "balance",    :precision => 10, :scale => 2, :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "first_name",     :limit => 50,  :null => false
    t.string   "last_name",      :limit => 50,  :null => false
    t.string   "gender"
    t.string   "street",         :limit => 50,  :null => false
    t.integer  "postal_code",    :limit => 4,   :null => false
    t.string   "city",           :limit => 100, :null => false
    t.decimal  "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", :force => true do |t|
    t.integer  "account_number"
    t.decimal  "value",                       :precision => 10, :scale => 2, :null => false
    t.decimal  "old_balance",                 :precision => 10, :scale => 2, :null => false
    t.decimal  "new_balance",                 :precision => 10, :scale => 2, :null => false
    t.string   "ope_type",       :limit => 1,                                :null => false
    t.datetime "ope_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
