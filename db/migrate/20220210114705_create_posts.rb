class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :member_id
      t.integer :item_id
      t.string :image_id
      t.string :brand_id
      t.string :title
      t.float :rate
      t.text :merit
      t.text :demerit
      t.text :usability
      t.text :cost_performance
      t.text :pattern
      t.text :other

      t.timestamps
    end
  end
end
