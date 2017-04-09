class CommentsController < ApplicationController

  def index
    @commentable = Post.find(params[:post_id])
    @comments = @commentable.comments
  end

  def new
    @commentable = Post.find(params[:post_id])
    @comment = @commentable.comments.new
  end

  def create
    @commentable = Post.find(params[:post_id])
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@commentable,@comment)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
