class IndexController < ApplicationController
  def index
    @categories = Category.first(5)
    @brands = Brand.all
    @products = Product.all
  end
end
