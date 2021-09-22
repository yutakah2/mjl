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
end
