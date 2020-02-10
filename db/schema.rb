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

ActiveRecord::Schema.define(version: 2020_02_01_040831) do

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "date", null: false
    t.bigint "shop_id", null: false
    t.integer "ten_oclock", null: false
    t.integer "eleven_oclock", null: false
    t.integer "twelve_oclock", null: false
    t.integer "thir_teen_oclock", null: false
    t.integer "four_teen_oclock", null: false
    t.integer "fif_teen_oclock", null: false
    t.integer "seven_teen_oclock", null: false
    t.integer "eigh_teen_oclock", null: false
    t.integer "nine_teen_oclock", null: false
    t.integer "twenty_oclock", null: false
    t.integer "twenty_one_oclock", null: false
    t.integer "twenty_two_oclock", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_customers_on_shop_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_messages_on_shop_id"
  end

  create_table "sales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "date", null: false
    t.bigint "shop_id", null: false
    t.string "days"
    t.integer "ten_oclock", null: false
    t.integer "eleven_oclock", null: false
    t.integer "twelve_oclock", null: false
    t.integer "thir_teen_oclock", null: false
    t.integer "four_teen_oclock", null: false
    t.integer "fif_teen_oclock", null: false
    t.integer "seven_teen_oclock", null: false
    t.integer "eigh_teen_oclock", null: false
    t.integer "nine_teen_oclock", null: false
    t.integer "twenty_oclock", null: false
    t.integer "twenty_one_oclock", null: false
    t.integer "twenty_two_oclock", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_sales_on_shop_id"
  end

  create_table "shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "shop_name", null: false
    t.string "password", null: false
    t.string "address", null: false
    t.integer "phonenumber", null: false
    t.string "manager", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "shops"
  add_foreign_key "messages", "shops"
  add_foreign_key "sales", "shops"
end
