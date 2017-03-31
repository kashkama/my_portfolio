class HomeController < ApplicationController
  def index
    @posts = Post.all
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
