require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:ft_user)
  end
  
  test "login with valid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email: @user.email, password: 'ft_user123'}}
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert flash.empty?
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
  end
  
  test "login with valid information followed by logout" do
    # Login
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email: @user.email, password: 'ft_user123'}}
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    
    #Logout once
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    
    #Logout again
    delete logout_path
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end
  
  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    assert_not_empty cookies[:remember_token]
  end

  test "login without remembering" do
    # Log in with remember me checked to set the cookie.
    log_in_as(@user, remember_me: '1')

    # Log in again without remember me to delete the cookie
    log_in_as(@user, remember_me: '0')

    # Test to check if the remember_token is gone from the cookies.
    assert_empty cookies[:remember_token]
  end

  test "error message shows up" do
    
    get login_path
    assert_template "sessions/new"
    post login_path params: { session: {email: "e@v", password: ""}}
    assert_not flash.empty?
    assert_template "sessions/new"
    get root_path
    assert flash.empty?
    
  end
  
end
