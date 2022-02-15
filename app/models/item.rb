class Item < ApplicationRecord
  has_many :posts,dependent: :destroy
  has_many :favorited_members,through: :item_favorites,source: :member

  has_many :item_favorites,dependent: :destroy
  def item_favorited_by?(member)
    item_favorites.where(member_id: member.id).exists?
  end

  belongs_to :category
  belongs_to :brand

  attachment :item_image

  #検索機能
  def self.search_for(word)
    @items = Item.where(['name LIKE ?', "%#{word}%"])
  end

  #ソート機能
  def self.sort(selection)
    case selection
    when 'new'
      return includes(:post).order("posts.created_at DESC")
    when 'old'
      return includes(:post).order("posts.created_at ASC")
    when 'likes'
      return includes(:favorited_members).sort {|a,b| b.favorited_members.size <=> a.favorited_members.size}
    end
  end


end
