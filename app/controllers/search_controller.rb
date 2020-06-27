class SearchController < ApplicationController
  def index
    options = {
      category:       params[:c],
      author:         params[:a],
      published_week: params[:w],
      published_day:  params[:d],
      sort:           params[:s],
      comments:       params[:comments]
    }
    @articles = Article.search(params[:q], options).page(params[:page]).results
  end
end

