class PostsController < ApplicationController

  layout 'layouts/application'

  def index
    @posts = Post.all
  end

  def show
    set_post
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
    set_post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      format.html{ render :action => "edit" }
    end
  end

  def edit
    set_post
  end

  def destroy
    set_post
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
