class HomeController < ApplicationController

  def index
    @categories = Category.all
    @posts = Post.all
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:id])
    @commentable = @post
    @comments = @commentable.comments.order('updated_at ASC')
  end

  def skill
    @category =  Category.find(params[:id])
  end


end
