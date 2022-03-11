class Post < ApplicationRecord
  has_many :post_comments, dependent: :destroy

  has_many :post_favorites, dependent: :destroy
  def post_favorited_by?(member)
    post_favorites.where(member_id: member.id).exists?
  end
  has_many :favorited_members, through: :post_favorites, source: :member

  belongs_to :member
  belongs_to :item
  belongs_to :brand

  attachment :image
  acts_as_taggable

  validates :title, presence: true
  validates :merit, presence: true
  validates :demerit, presence: true
  validates :usability, presence: true
  validates :cost_performance, presence: true
  validates :pattern, presence: true

  # レビューのバリデーション(星１〜５)
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  # ソート機能
  def self.sort(selection)
    case selection
    when 'new'
      all.order(created_at: :DESC)
    when 'old'
      all.order(created_at: :ASC)
    when 'likes'
      includes(:favorited_members).sort { |a, b| b.favorited_members.size <=> a.favorited_members.size }
    end
  end
end
