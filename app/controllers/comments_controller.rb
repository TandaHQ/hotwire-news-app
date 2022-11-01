class CommentsController < ApplicationController
  def create
    binding.pry
    @comment = Comment.new(
      text: params[:text],
      index: params[:index]
    )
  end
end
