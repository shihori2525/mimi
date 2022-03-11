class Admin::BrandsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to admin_brands_path, notice: 'ブランドを新規登録しました'
    else
      render 'new'
    end
  end

  def index
    @brands = Brand.page(params[:page]).reverse_order
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to admin_brands_path, notice: '変更を保存しました'
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to admin_brands_path
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end
end
