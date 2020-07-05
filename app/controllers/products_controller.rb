class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :new, :create, :edit, :update]

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

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product deleted"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Något gick fel"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand_id, :primary_category_id, :secondary_category_id, :third_category_id, :height, :width, :depth, :weight, :battery, :battery_type, :display, :water_res, :memory, :gps, :bluetooth, :wi_fi, :os_system, :heart_rate, :apps, :sleep_tracking, :fitness_features, :barometer, :altimeter, :nfc, :touch_screen, :voice_control, :phone_call, :avatar, :store_1_name, :store_1_link, :store_1_price, :store_2_name, :store_2_link, :store_2_price, :store_3_name, :store_3_link, :store_3_price, :active)
  end
end
