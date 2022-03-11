class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.integer :item_id
      t.string :item_image_id
      t.string :name

      t.timestamps
    end
  end
end
