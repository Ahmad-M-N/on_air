class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        warning = "Account not activated. Please check your email for an activation link."
        flash[:warning] = warning
        redirect_to root_url
      end
    else
      flash.now[:danger] = "invalid email - password combination"
      render 'new'
    end 
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
