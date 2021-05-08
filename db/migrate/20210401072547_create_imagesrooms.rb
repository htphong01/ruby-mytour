class CreateImagesrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :imagesrooms do |t|
      t.integer :idroom
      t.string :images
      t.string :uploaded
    end
  end
end
