class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :nameroom
      t.string :image
      t.integer :amount
      t.float :price
      t.float :final_price
      t.integer :policy
      t.integer :area
      t.string :direction
      t.string :beds
      t.integer :breakfast
      t.string :description
      t.integer :discount
      t.integer :hotel
      t.integer :typeroom
      t.integer :maximun
      t.integer :status
    end
  end
end
