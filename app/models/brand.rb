class Brand < ApplicationRecord
  has_many :items

  attachment :item_image

  def self.search_for(word)
    Brand.where(['name LIKE ?', "%#{word}%"])
  end

end
