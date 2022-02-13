class Public::ItemFavoritesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    favorite = current_member.item_favorites.new(item_id: @item.id)
    favorite.save
  end

  def destroy
    @Item = Item.find(params[:item_id])
    favorite = current_member.item_favorites.find_by(item_id: @item.id)
    favorite.destroy
  end
end
