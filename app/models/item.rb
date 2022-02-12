class Item < ApplicationRecord
  has_many :item_favorites,dependent: :destroy
  belongs_to :category
  belongs_to :brand

  attachment :item_image

end
