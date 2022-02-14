class Public::SearchesController < ApplicationController

  def seaech
    if @range == "1"
      @items = Item.search(params[:search])
    else
      @brands = Brand.search(params[:search])
    end
  end
end
