class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
  end

  #ソート機能
  def sort_item_post
    selection = params[:keyword]
    @sort_posts = Item.sort(selection)
  end

end
