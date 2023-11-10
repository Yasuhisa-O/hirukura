class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @post = current_user.run_spot
    @posts = @user.posts.includes(:user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      redirect_to post_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
