require 'news-api'

class HomeController < ApplicationController
  def index
    # This is patricks personal one we should get a wf.com one pls
    # Sorry pat I like this one
    n = News.new("15b2cddbc74645cdbfcc5e56e15319fd")
    @articles = n.get_top_headlines(sources: "bbc-news")
  end
end
