class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.integer :brand_id
      t.integer :category_id
      t.string :name
      t.string :item_image_id

      t.timestamps
    end
  end
end
