class SessionController < ApplicationController
  
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

  end
end
