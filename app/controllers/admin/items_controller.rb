class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item)
    else
      render "new"
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def _params
    params.require(:item).permit(:brand_id,:category_id,:name,:item_image_id)
  end

end
