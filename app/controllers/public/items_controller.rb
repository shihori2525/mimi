class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @posts = @item.posts
  end

  #ソート機能
  def sort_item_post
    selection = params[:keyword]
    @item = Item.find(params[:item_id])
    @posts = @item.sorted_posts(selection)
  end

end
