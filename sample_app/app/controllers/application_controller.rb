class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception


  #######
  private
      
  def enforce_log_in
    if !logged_in?
      store_intended_location
      flash[:danger] = "Please login first"
      redirect_to login_url
    end
  end

end
