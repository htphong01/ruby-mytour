class CreateBooking < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :customer
      t.string :contact
      t.string :address
      t.string :room
      t.integer :pay
      t.datetime :bookday
      t.datetime :dayleave
      t.string :priceRoom
      t.string :payment
      t.integer :numberRoom
    end
  end
end
