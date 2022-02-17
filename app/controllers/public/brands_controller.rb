class Public::BrandsController < ApplicationController
  before_action :authenticate_member!

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
  end

end
