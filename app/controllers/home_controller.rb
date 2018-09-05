class HomeController < ApplicationController
  before_action :set_post, only: [:show]
  def index
    @posts = Post.all
    @user = User.first
    @like = Like.first
  end
  def show
  end
  private
  def set_post
    @post = Post.find(params[:id])
  end
end
