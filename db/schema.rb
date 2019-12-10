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

ActiveRecord::Schema.define(version: 2019_12_10_192820) do

  create_table "pcs", force: :cascade do |t|
    t.text "Name", null: false
    t.text "Motherboard", null: false
    t.text "CpuCooler", null: false
    t.text "Case", null: false
    t.text "PowerSupply", null: false
    t.text "Storage", null: false
    t.decimal "Price"
    t.text "Description"
    t.datetime "Date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
