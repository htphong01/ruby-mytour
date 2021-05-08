class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :passsave
      t.string :name
      t.string :image
      t.string :email
      t.string :phone
      t.string :address
      t.integer :role
      t.string :code
      t.integer :isActive
    end
  end
end
