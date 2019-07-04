class SessionController < ApplicationController
  before_action :check_login , only: :new
  def new;end

  def create
    user = User.find_by(email: params[:account][:email])
    if user && user.authenticate(params[:account][:password])
      flash[:success] = "Login success"
      login user
      redirect_to profile_path
    else
      flash[:danger] = "Invalid email/password combination"
      render :new
    end

  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    flash[:success] = "Logout success"
    redirect_to root_path
  end
end
