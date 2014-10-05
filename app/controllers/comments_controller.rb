class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    set_post
    redirect_to post_path(@post)
  end

  def show
    set_post_comment
  end

  def new
    @comment = Comment.new
    set_post
  end

  def create
    set_post
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to post_comment_path(@post, @comment)
    else
      render :new
    end
  end

  def edit
    set_comment
    set_post_comment
  end

  def update
    set_comment
    set_post_comment
    if @comment.update(comment_params)
      redirect_to post_comment_path(@post, @comment)
    else
      format.html { render :action => "edit" }
    end
  end

  def destroy
    set_comment
    set_post_comment
    @comment.destroy

    redirect_to post_comments_path(@post, @comment)
  end

private

  def comment_params
    params.require(:comment).permit(:commenter, :content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_nested_comment
    @comment = @post.comments.find(params[:id])
  end

  def set_nested_comment
    @comment = @post.comments.find(params[:id])
  end

  def set_post_comment
    set_post
    set_nested_comment
  end

end
