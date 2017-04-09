class HomeController < ApplicationController

  def index
    @categories = Category.all
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @commentable = @post
    @comments = @commentable.comments
  end

  def skill
    @category =  Category.find(params[:id])
  end
end
