class ArticlesController < ApplicationController

  def show
      @article = Article.find(params[:id])
  end

  def new
  end

  def create
      # render plain: params[:articles].inspect
      @article = Article.new(article_params)

      @article.save
      redirect_to @article
  end

  private
    def article_params
      params.require(:articles).permit(:title, :text)
    end

end
