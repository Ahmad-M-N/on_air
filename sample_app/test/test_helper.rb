ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  # Return true if a test user is logged in; else, return false.
  def is_logged_in?
    return !session[:user_id].nil?
  end

  def log_in_as(user)
    session[:user_id] = user.id
  end
  
end

class ActionDispatch::IntegrationTest
  fixtures :all

  # Log in as a particular user.
  def log_in_as(user, password: 'ft_user123', remember_me: '1')
    post login_path, params: { session: { email: user.email,
    password: password,
    remember_me: remember_me } }
  end

end
  