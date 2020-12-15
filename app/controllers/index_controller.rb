class IndexController < ApplicationController
  def index
    @categories = Category.first(5)
    @brands = Brand.all
    @products = Product.all
    @articles = Article.all
  end
end
