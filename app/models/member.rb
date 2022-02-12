class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,dependent: :destroy
  has_many :post_comments,dependent: :destroy
  has_many :item_favorites,dependent: :destroy
  has_many :post_favorites,dependent: :destroy

  #フォローする側から中間テーブルのアソシエーション
  has_many :relationships,foreign_key: :following_id
  has_many :followings, through: :relationships, source: :follower

  #フォローされる側から中間テーブルのアソシエーション
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :reverse_of_relationships, source: :following
end
