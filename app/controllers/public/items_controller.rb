class Public::ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    #評価の平均値を表示させる
    if @item.posts.blank?
      @average_review = 0
    else
      @average_review = @item.posts.average(:rating).round(2)
    end
  end

end
