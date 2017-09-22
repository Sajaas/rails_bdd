class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :content))
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
