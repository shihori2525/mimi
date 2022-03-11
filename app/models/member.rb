class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :item_favorites, dependent: :destroy
  has_many :post_favorites, dependent: :destroy
  has_many :favorited_posts, through: :post_favorites, source: :post

  # フォローする側から中間テーブルのアソシエーション
  has_many :relationships, foreign_key: :following_id
  has_many :followings, through: :relationships, source: :follower

  # フォローされる側から中間テーブルのアソシエーション
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: :follower_id
  has_many :followers, through: :reverse_of_relationships, source: :following

  # あるユーザーが引数で渡されたmemberにフォローされているか調べるメソッド
  def is_followed_by?(member)
    reverse_of_relationships.find_by(following_id: member.id).present?
  end

  attachment :profile_image

  validates :name, presence: true, length: { maximum: 20, minimum: 2 }
  validates :introduction, length: { maximum: 200 }
end
