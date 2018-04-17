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

ActiveRecord::Schema.define(version: 20180416161926) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.string "address1"
    t.string "address2"
    t.string "town"
    t.string "county"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "carttotal", default: "0.0"
  end

  create_table "orderitems", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
    t.decimal "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "salesTax"
    t.decimal "shippingFee"
    t.decimal "total"
    t.string "methodOfPayment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "manu"
    t.string "model"
    t.text "desc"
    t.string "procname"
    t.integer "proc_id"
    t.integer "memsize"
    t.integer "mem_id"
    t.string "hdtype"
    t.integer "hdsize"
    t.integer "hd_id"
    t.string "osname"
    t.integer "os_id"
    t.decimal "vatprice"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
