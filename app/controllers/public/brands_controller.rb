class Public::BrandsController < ApplicationController
  before_action :authenticate_member!

  def index
    @brands = Brand.page(params[:page]).reverse_order
  end

  def show
    @brand = Brand.find(params[:id])
  end
end
