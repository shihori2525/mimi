class Brand < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :posts, dependent: :destroy

  attachment :item_image

  validates :name, presence: true

  def self.search_for(word)
    Brand.where(['name LIKE ?', "%#{word}%"])
  end
end
