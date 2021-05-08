class CreateImageshotel < ActiveRecord::Migration[6.1]
  def change
    create_table :imageshotels do |t|
      t.string :image
      t.integer :idhotel
      t.string :uploaded
    end
  end
end
