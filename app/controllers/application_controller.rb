class ApplicationController < ActionController::Base

  def index
    @Aabc = ENV["MAIL_SENDER"]
  end

end
