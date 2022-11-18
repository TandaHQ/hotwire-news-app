class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      params[:index],
      params[:text],
      params[:url], # to associate comments to incoming api articles w/o article persistence
    )
  end
end
