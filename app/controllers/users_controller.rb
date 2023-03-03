class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
    # mapメソッドを使いfavoriteをtweetの情報に変換
    @favorite_tweets = @user.favorite_tweets
  end
end