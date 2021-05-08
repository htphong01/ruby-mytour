class CreateStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :status do |t|
      t.string :name
      t.string :description
    end
  end
end
