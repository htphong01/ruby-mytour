class CreateAddress < ActiveRecord::Migration[6.1]
  def change
    create_table :address do |t|
      t.string :name
    end
  end
end
