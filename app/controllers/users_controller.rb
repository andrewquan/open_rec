class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Your profile has been updated."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def groups
    @groups = User.find(params[:id]).groups
  end

  private

    def user_params
      params.require(:user).permit(:about_me, :image, :image_cache)
    end
end
