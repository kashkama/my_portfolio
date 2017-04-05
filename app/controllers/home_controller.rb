class HomeController < ApplicationController

  def index
    @categories = Category.all
    @posts = Post.all
    # @commentable = Post.find(params[:post_id])
    # @comments = @commentable.comments
  end

  def show
    @category = Category.find(params[:id])
    @post = Post.find(params[:id])
    @commentable   = @post
    @comments = @commentable.comments
  end
end
