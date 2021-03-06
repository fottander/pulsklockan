class CategoriesController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :new, :create, :edit, :update]

  def show
    @brands = Brand.all
    @category = Category.friendly.find(params[:id])
    @products = Product.with_attached_avatar.active.where("primary_category_name = ? OR secondary_category_name = ? OR third_category_name = ?", params[:id], params[:id], params[:id])
    add_breadcrumb 'Hem', :root_path
    add_breadcrumb "#{@category.name}"
  end

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category was successfully added' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @category = Category.find_by_slug(params[:id])
  end

  def update
    @category = Category.find_by_slug(params[:id])
    respond_to do |format|
      if @category.update category_params
        format.html { redirect_to edit_category_path(@category), notice: 'Category edited!' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category = Category.find_by_slug(params[:id])
    if @category.destroy
      flash[:notice] = "Category deleted"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Något gick fel"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :avatar)
  end
end
