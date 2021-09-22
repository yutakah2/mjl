class ArticlesController < ApplicationController

  def index
    query = "SELECT * FROM articles"
    @articles = Article.find_by_sql(query)
  end

  def new
    @article = Article.new
  end

  def search
    @articles = SearchArticlesService.search(params[:keyword])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image).merge(user_id: current_user.id)
  end
end
