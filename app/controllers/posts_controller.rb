class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
      
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post.id)
  end

  def show

  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def set_post
      @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
