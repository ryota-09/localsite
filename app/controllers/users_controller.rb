class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    news = News.find(params[:id])
    news.destroy
    redirect_to news_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :avatar, :news)
  end
end
