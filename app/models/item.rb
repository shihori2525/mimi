class Item < ApplicationRecord
  has_many :posts,dependent: :destroy

  has_many :item_favorites,dependent: :destroy
  def item_favorited_by?(member)
    item_favorites.where(member_id: member.id).exists?
  end

  belongs_to :category
  belongs_to :brand

  attachment :item_image

  def self.search(search)
    if search
      Item.where(['name LIKE ?', "%#{seaech}%"])
    else
      Item.all
    end
  end
end
