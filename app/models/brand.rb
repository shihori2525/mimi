class Brand < ApplicationRecord
  has_many :items

  attachment :item_image
end
