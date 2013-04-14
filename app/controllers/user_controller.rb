class UserController < ApplicationController
  def main
    @users = User.all
  end

  def search
    @found_users = User.where(name: params[:query]).all
  end

  def show
    @user = User.find(params[:id])
  end
end
