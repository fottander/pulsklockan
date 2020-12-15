class ArticlesController < ApplicationController
  before_action :authenticate_admin!, only: [:index, :new, :create, :edit, :update]

  def show
    @article = Article.find(params[:id])
    add_breadcrumb 'Hem', :root_path
    add_breadcrumb 'Blogg', '/blogg'
    add_breadcrumb "#{@article.title}"
    @articles = Article.all.shuffle
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def all
    @articles = Article.all
    add_breadcrumb 'Hem', :root_path
    add_breadcrumb 'Blogg'
  end

  def create
    @article = Article.new article_params
    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_path, notice: 'Article was successfully added' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update article_params
        format.html { redirect_to edit_article_path(@article), notice: 'Article edited!' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:notice] = "Article deleted"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Något gick fel"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
