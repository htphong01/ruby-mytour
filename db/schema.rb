# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_30_155840) do

  create_table "accounts", charset: "utf8mb4", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "passsave"
    t.string "name"
    t.string "image"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.integer "role"
    t.string "code"
    t.integer "toggle"
  end

  create_table "address", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
  end

  create_table "bills", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "set_date"
    t.integer "room"
    t.integer "hotel"
    t.float "price"
    t.datetime "checkin_date"
    t.datetime "checkout_date"
    t.integer "amount"
    t.float "sum_price"
    t.string "pay"
    t.integer "status"
    t.integer "rating"
    t.string "comment"
    t.string "showname"
  end

  create_table "bookings", charset: "utf8mb4", force: :cascade do |t|
    t.string "customer"
    t.string "contact"
    t.string "address"
    t.string "room"
    t.integer "pay"
    t.datetime "bookday"
    t.datetime "dayleave"
    t.string "priceRoom"
    t.string "payment"
    t.integer "numberRoom"
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "namecate"
    t.integer "parent_id"
    t.string "description"
  end

  create_table "charts", charset: "utf8mb4", force: :cascade do |t|
    t.string "namehotel"
    t.integer "star"
    t.string "comment"
    t.float "1sao"
    t.float "2sao"
    t.float "3sao"
    t.float "4sao"
    t.float "5sao"
  end

  create_table "comments", charset: "utf8mb4", force: :cascade do |t|
    t.string "content"
    t.integer "parent_id"
    t.integer "user"
    t.integer "idpost"
    t.datetime "datecmt"
    t.integer "isShow"
    t.integer "likecmt"
  end

  create_table "contacts", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user"
    t.string "name"
    t.string "email"
    t.string "content"
    t.datetime "date_send"
    t.string "reply"
  end

  create_table "hotels", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "address"
    t.integer "id_address"
    t.integer "cate"
    t.integer "admin_hotel"
    t.text "description"
  end

  create_table "imageshotels", charset: "utf8mb4", force: :cascade do |t|
    t.string "image"
    t.integer "idhotel"
    t.string "uploaded"
  end

  create_table "imagesrooms", charset: "utf8mb4", force: :cascade do |t|
    t.integer "idroom"
    t.string "images"
    t.string "uploaded"
  end

  create_table "likecomments", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user"
    t.integer "idcmt"
    t.integer "toggle"
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "image"
    t.integer "user"
    t.datetime "datepost"
    t.integer "checkpost"
    t.string "slug"
    t.integer "view"
    t.integer "isShow"
  end

  create_table "roles", charset: "utf8mb4", force: :cascade do |t|
    t.string "namerole"
  end

  create_table "rooms", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameroom"
    t.string "image"
    t.integer "amount"
    t.float "price"
    t.float "final_price"
    t.integer "policy"
    t.integer "area"
    t.string "direction"
    t.string "beds"
    t.integer "breakfast"
    t.string "description"
    t.integer "discount"
    t.integer "hotel"
    t.integer "type"
    t.integer "maximun"
    t.integer "status"
  end

  create_table "status", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "typerooms", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

end
