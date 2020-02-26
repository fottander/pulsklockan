class BrandsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]

  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products
  end

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new brand_params
    respond_to do |format|
      if @brand.save
        format.html { redirect_to brands_path, notice: 'Brand was successfully added' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def brand_params
    params.require(:brand).permit(:name, :description, :extra_info)
  end
end
