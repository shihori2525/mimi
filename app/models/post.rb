class Post < ApplicationRecord
  has_many :post_comments,dependent: :destroy

  has_many :post_favorites,dependent: :destroy
  def post_favorited_by?(member)
    post_favorites.where(member_id: member.id).exists?
  end

  belongs_to :member
  belongs_to :item

  attachment :image
  acts_as_taggable

end
