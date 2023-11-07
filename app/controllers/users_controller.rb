class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @post = current_user.run_spot
  end
end
