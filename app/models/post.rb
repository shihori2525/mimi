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

  #ソート機能
  def self.sort(selection)
    case selection
    when 'new'
      return all.order(created_at: :DESC)
    when 'old'
      return all.order(created_at: :ASC)
    when 'post_favorites'
      return find(PostFavorite.group(:post_id).order(Arel.sql('count(post_id) desc')).pluck(:post_id))
    end
  end

end
