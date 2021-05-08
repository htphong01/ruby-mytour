class CreateChart < ActiveRecord::Migration[6.1]
  def change
    create_table :charts do |t|
      t.string :namehotel
      t.integer :star
      t.string :comment
      t.float :"1sao"
      t.float :"2sao"
      t.float :"3sao"
      t.float :"4sao"
      t.float :"5sao"
    end
  end
end
