class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @comments = Comment.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      format.html{ render :action => "edit" }
    end
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

private

  def post_params
    params.require(:post).permit(:name, :title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
