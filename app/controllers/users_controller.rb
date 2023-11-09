class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @post = current_user.run_spot
    @posts = @user.posts.includes(:user)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
