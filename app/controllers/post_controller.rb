class PostController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @posts = Post.find_by(id: params[:id])
  end
  def new
  end
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/post")
  end
end
