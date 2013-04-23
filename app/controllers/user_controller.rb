class UserController < ApplicationController
  def main
    @users = User.all
  end

  def search
    @found_users = User.where(name: params[:search_query]).all
    if @found_users.empty?
      flash[:notice] = "No users found:("
      redirect_to root_url
    end

  end

  def show
    @user = User.find(params[:id])
  end
end
