class Admin::BrandsController < ApplicationController
  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to admin_brand_path(@brand)
    else
      render "new"
    end
  end

  def index
    @brands = Brand.all
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to admin_brand_path(@brand)
    else
      render "edit"
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to admin_brands_path
  end


  private

  def _params
    params.require(:brand).permit(:name)
  end
end
