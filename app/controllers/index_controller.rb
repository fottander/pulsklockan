class IndexController < ApplicationController
  def index
    @categories = Category.all
    @brands = Brand.all
    @products = Product.all
  end
end
