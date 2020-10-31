class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.where(user_id: @user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
