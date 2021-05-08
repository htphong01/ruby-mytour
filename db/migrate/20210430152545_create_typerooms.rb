class CreateTyperooms < ActiveRecord::Migration[6.1]
  def change
    create_table :typerooms do |t|
      t.string :name
      t.string :description
    end
  end
end
