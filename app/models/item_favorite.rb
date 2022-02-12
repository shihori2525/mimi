class ItemFavorite < ApplicationRecord
  belongs_to :member
  belongs_to :item
end
