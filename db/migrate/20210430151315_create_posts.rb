class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :image
      t.integer :user
      t.datetime :datepost
      t.integer :checkpost
      t.string :slug
      t.integer :view
      t.integer :isShow
    end
  end
end
