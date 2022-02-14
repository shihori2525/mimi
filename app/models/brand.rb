class Brand < ApplicationRecord
  has_many :items

  attachment :item_image

  def self.search(search)
    if search
      Brand.where(['name LIKE ?', "%#{seaech}%"])
    else
      Item.all
    end
  end

end
