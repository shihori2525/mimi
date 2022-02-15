class Post < ApplicationRecord
  has_many :post_comments,dependent: :destroy

  has_many :post_favorites,dependent: :destroy
  def post_favorited_by?(member)
    post_favorites.where(member_id: member.id).exists?
  end

  belongs_to :member
  belongs_to :item
  belongs_to :brand

  attachment :image
  acts_as_taggable

  #レビューのバリデーション(星１〜５)
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true

  #ソート機能
  def self.sort(selection)
    case selection
    when 'new'
      return all.order(created_at: :DESC)
    when 'old'
      return all.order(created_at: :ASC)
    when 'likes'
      return find(PostFavorite.group(:post_id).order(Arel.sql('count(post_id) desc')).pluck(:post_id))
    end
  end

end
