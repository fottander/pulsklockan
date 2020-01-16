class IndexController < ApplicationController
  def index
    @categories = Category.all
    @brands = Brand.all
  end
end
