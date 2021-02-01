class UsersController < ApplicationController
  def show
    @comments = User.includes(:user)
    @user = User.find(params[:id])
  end
end