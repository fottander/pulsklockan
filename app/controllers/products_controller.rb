class ProductsController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :new, :create, :edit, :update]

  def show
    @product = Product.friendly.find(params[:id])
    add_breadcrumb 'Hem', :root_path
    add_breadcrumb "#{@product.primary_category.name}", category_path(@product.primary_category)
    add_breadcrumb "#{@product.brand.name}", "/#{@product.brand.name}"
    add_breadcrumb @product.name
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
    @product = Product.find_by_slug(params[:id])

  end

  def update
    @categories = Category.all
    @product = Product.find_by_slug(params[:id])
    if @product.primary_category_id?
      @primary_category = @categories.find_by_id(@product.primary_category_id)
      @product.primary_category_name = @primary_category.slug
    end
    if @product.secondary_category_id?
      @secondary_category = @categories.find_by_id(@product.secondary_category_id)
      @product.secondary_category_name = @secondary_category.slug
    end
    if @product.third_category_id?
      @third_category = @categories.find_by_id(@product.third_category_id)
      @product.third_category_name = @third_category.slug
    end
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
    @product = Product.find_by_slug(params[:id])
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
    params.require(:product).permit(:name, :brand_id, :primary_category_id, :secondary_category_id, :third_category_id, :height, :width, :depth, :weight, :battery, :touch_screen, :water_res, :memory, :os_compatible, :bluetooth, :wi_fi, :apps, :nfc, :voice_control, :phone_call, :music, :gps, :heart_rate, :barometer, :sleep_tracking, :calories, :steps, :oxygen, :golf, :cycling, :swimming, :store_1_name, :store_1_link, :store_1_price, :store_2_name, :store_2_link, :store_2_price, :store_3_name, :store_3_link, :store_3_price, :active, :avatar)
  end
end
