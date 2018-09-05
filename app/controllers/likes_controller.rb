class LikesController < ApplicationController
  def new
    @like = Like.new
  end
  def create
    @like = Like.new(like_params)
    if @like.save
      flash[:notice] = "Successfully like"
      redirect_to root_path(@like)
    else
      render 'new'
    end
  end
  def destroy

  end
  def like_params
    params.require(:like).permit(:post_id,:user_id)
  end
end
