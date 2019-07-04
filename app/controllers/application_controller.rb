class ApplicationController < ActionController::Base
  include SessionHelper

  private

  def check_login
    redirect_to profile_path if logged_in?
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please login"
      redirect_to login_url
    end
  end
end
