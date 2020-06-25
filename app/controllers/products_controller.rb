class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully added' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update product_params
        format.html { redirect_to edit_product_path(@product), notice: 'Product edited!' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :brand_id, :primary_category_id, :secondary_category_id, :third_category_id, :dimension, :battery, :weight, :display, :water_res, :memory, :gps, :bluetooth, :wi_fi, :os_system, :nfc, :heart_rate, :touch_screen, :voice_control, :phone_call, :offline_music, :apps, :sleep_tracking, :fitness_features, :external_link)
  end
end
