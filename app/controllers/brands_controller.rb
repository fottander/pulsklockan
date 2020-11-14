class BrandsController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :new, :create, :edit, :update]

  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products.active.with_attached_avatar
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

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    respond_to do |format|
      if @brand.update brand_params
        format.html { redirect_to edit_brand_path(@brand), notice: 'Brand edited!' }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    if @brand.destroy
      flash[:notice] = "Brand deleted"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Något gick fel"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :description, :extra_info, :avatar)
  end
end
