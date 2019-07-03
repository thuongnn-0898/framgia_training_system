class UserController < ApplicationController

  def index; end

  def new
    @user = User.new
  end

  def create
    flash[:warning] = "Hello"
    redirect_to root_path
  end

  def show
  end


end
