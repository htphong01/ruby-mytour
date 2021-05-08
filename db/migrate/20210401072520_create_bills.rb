class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.integer :user
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.datetime :set_date
      t.integer :room
      t.integer :hotel
      t.float :price
      t.datetime :checkin_date
      t.datetime :checkout_date
      t.integer :amount
      t.float :sum_price
      t.string :pay
      t.integer :status
      t.integer :rating
      t.string :comment
      t.string :showname
    end
  end
end
