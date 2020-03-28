class CategoriesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update]

  def show
    @category = Category.find(params[:id])
    @products = Product.where("primary_category_id = ? OR secondary_category_id = ? OR third_category_id = ?", params[:id], params[:id], params[:id])
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
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
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

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
