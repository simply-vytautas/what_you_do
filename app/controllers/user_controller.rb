class UserController < ApplicationController
  def search
    binding.pry
    @users = User.where(name: params[:query]).all
  end
end
