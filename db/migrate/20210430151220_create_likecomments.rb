class CreateLikecomments < ActiveRecord::Migration[6.1]
  def change
    create_table :likecomments do |t|
      t.integer :user
      t.integer :idcmt
      t.integer :isShow
    end
  end
end
