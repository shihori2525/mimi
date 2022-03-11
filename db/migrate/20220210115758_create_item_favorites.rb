class CreateItemFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :item_favorites do |t|
      t.integer :member_id
      t.integer :item_id

      t.timestamps
    end
  end
end
