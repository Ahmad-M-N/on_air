module SessionsHelper
  
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Remembers the user in a persistent session
  def remember(user)
    user.remember
    cookies.permanent.encrypted[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
  
  # Forgets the user
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end
  
  # Retrives the current logged-in user form database
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.encrypted[:user_id])
      user ||= User.find_by(id: user_id)
      if user && user.authenticated?(:remember, cookies[:remember_token])
        log_in(user)
        @current_user = user
      end
    end
  end
  
  # Checks if a user is logged in
  def logged_in?
    return !current_user.nil?
  end
  
  # Logs the user out
  def log_out
    forget current_user
    session.delete(:user_id)
    @current_user = nil
  end

  # Returns true if the given user is the current user
  def current_user?(user)
    !user.nil? && @current_user == user
  end

  # Stores the intended location of a not allowed get request
  def store_intended_location
    session[:forwarding_url] = request.original_url if request.get?
  end
  
  # Redirects the user to the stored intended location
  def redirect_back_or(default)
    redirect_to (session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

end
