class CreateCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :namecate
      t.integer :parent_id
      t.string :description
    end
  end
end
