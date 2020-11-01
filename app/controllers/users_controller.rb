class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :user_image, :introduction)
  end

end
