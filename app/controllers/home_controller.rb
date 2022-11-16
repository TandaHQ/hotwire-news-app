require 'news-api'

class HomeController < ApplicationController
  PER_PAGE = 10.freeze

  def index
    @page = params[:page] ? params[:page].to_i : 1
    @offset = (@page - 1) * PER_PAGE
    n = News.new("aceb7c8dcfcd407088c69ce236945039")
    @articles = n.get_everything(sources: "bbc-news")[@offset..@offset + (PER_PAGE - 1)]
    @next_page = @page + 1 if @articles.size == PER_PAGE
  end
end
