class CreateItemFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :item_favorites do |t|

      t.timestamps
    end
  end
end
