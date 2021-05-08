class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.integer :user
      t.string :name
      t.string :email
      t.string :content
      t.datetime :date_send
      t.string :reply
    end
  end
end
