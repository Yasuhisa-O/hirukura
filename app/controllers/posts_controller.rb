class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:mileage, :required_time, :run_spot, :text, :prefecture_id, :achievement_level_id, :recommendation_id, :scenic_beauty_id, :slope_difficulty_id).merge(user_id: current_user.id)
  end

end
