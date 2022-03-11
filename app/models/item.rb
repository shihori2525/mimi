class Item < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :favorited_members, through: :item_favorites, source: :member

  has_many :item_favorites, dependent: :destroy
  def item_favorited_by?(member)
    item_favorites.where(member_id: member.id).exists?
  end

  belongs_to :category
  belongs_to :brand

  attachment :item_image

  validates :name, presence: true

  # 検索機能
  def self.search_for(word)
    @items = Item.where(['name LIKE ?', "%#{word}%"])
  end

  # ソート機能
  def sorted_posts(selection)
    case selection
    when 'new'
      # itemに紐づいている投稿を持ってくる
      posts.order(created_at: :DESC)
    when 'old'
      posts.order(created_at: :ASC)
    when 'likes'
      posts.includes(:favorited_members).sort { |a, b| b.favorited_members.size <=> a.favorited_members.size }
    end
  end
end
