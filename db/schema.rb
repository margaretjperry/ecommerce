# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_10_020921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "quantity"
    t.string "color"
    t.string "size"
    t.integer "weight"
    t.integer "price_cents"
    t.integer "sale_price_cents"
    t.integer "cost_cents"
    t.string "sku"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.string "note"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "inventory_id"
    t.string "street_address"
    t.string "apartment"
    t.string "city"
    t.string "state"
    t.string "country_code"
    t.integer "zip"
    t.string "phone_number"
    t.string "email"
    t.string "name"
    t.string "order_status"
    t.string "payment_ref"
    t.string "transaction_id"
    t.integer "payment_amt_cents"
    t.integer "ship_charged_cents"
    t.integer "ship_cost_cents"
    t.integer "subtotal_cents"
    t.integer "total_cents"
    t.string "shipper_name"
    t.datetime "payment_date"
    t.datetime "shipped_date"
    t.string "tracking_number"
    t.integer "tax_total_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "description"
    t.string "style"
    t.string "brand"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url"
    t.string "product_type"
    t.integer "shipping_price"
    t.string "note"
    t.integer "admin_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_hash"
    t.string "password_plain"
    t.boolean "superadmin"
    t.string "shop_name"
    t.string "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "card_brand"
    t.integer "card_last_four"
    t.datetime "trial_ends_at"
    t.string "shop_domain"
    t.boolean "is_enabled"
    t.string "billing_plan"
    t.datetime "trial_starts_at"
  end

end
