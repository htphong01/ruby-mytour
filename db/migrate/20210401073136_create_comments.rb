class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :parent_id
      t.integer :user
      t.integer :idpost
      t.datetime :datecmt
      t.integer :isShow
      t.integer :likecmt
    end
  end
end
