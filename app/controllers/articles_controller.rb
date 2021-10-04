class ArticlesController < ApplicationController

  def index
    query = "SELECT * FROM articles"
    @articles = Article.find_by_sql(query)
    @article = Article.all
    #render :show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def search
    @articles = SearchArticlesService.search(params[:keyword])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image).merge(user_id: current_user.id)
  end
end
