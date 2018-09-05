class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit,:update,:destroy,:index,:like]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @like = Like.new
  end

  def like
    @like = Like.new
      if @like.save
        flash[:notice] = "Somethink not good"
        redirect_to post_path(@like)
      else
        render 'new'
      end
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        flash[:notice] = "Post successfully created"
        redirect_to post_path(@post)
      else
        render 'new'
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post succesfull update"
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @post.destroy
    flash[:notice]="Post successfull delete"
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name,:title,:content)
  end

  def like_params
    params.require(:like).permit(:user_id,:post_id)
  end
end
