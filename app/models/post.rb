class Post < ApplicationRecord
  has_many :post_comments,dependent: :destroy
  has_many :post_favorites,dependent: :destroy

  belongs_to :member
  belongs_to :item

  attachment :image
end
