class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :image
      t.string :address
      t.integer :id_address
      t.integer :cate
      t.integer :admin_hotel
      t.text :description
    end
  end
end
