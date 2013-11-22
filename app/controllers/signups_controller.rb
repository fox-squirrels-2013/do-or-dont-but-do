class SignupsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @user.save
    redirect_to root_path
  end
end