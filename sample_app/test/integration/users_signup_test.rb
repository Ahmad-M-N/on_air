require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  def setup
    ActionMailer::Base.deliveries.clear
  end

  test "invalid user should not signup" do
    get signup_path
    assert_no_difference 'User.count' do 
      post users_path, params: { user: { name:'',
                                         email: "user@invalid",
                                         password: "doo",
                                         password_confirmation: "dkj"}}
    end
    assert_template "users/new"
    assert_select "div#error_explanation"
    assert_select "div.field_with_errors"
  end
  
  test "signup with valid info and activation credentials" do
    get signup_path

    # User should be added in the database if info is valid
    assert_difference 'User.count', 1 do 
      post users_path, params: { user: { name:'valid',
                                         email: "user@valid.com",
                                         password: "###123abc",
                                         password_confirmation: "###123abc"}}
    end

    # User should have been sent an email for account activation
    assert_equal 1, ActionMailer::Base.deliveries.size
    
    user = assigns(:user)
    
    # User should be sent to home page with a notice informing
    # them about the acctivation link they were sent
    assert_redirected_to root_url
    follow_redirect!
    assert_select ".alert-info"  # div that contains the info

    # User should not be activated at this point
    assert_not user.activated?

    # Because of pending activation, user should not be able to login yet.
    log_in_as(user, password: "###123abc")
    assert_not is_logged_in?

    # Testing behaviour for invalid activation links:
    ## Testing behaviour for wrong email in the link
    get edit_account_activation_path(user.activation_token, email: "wrong")
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select ".alert-danger"  # Notice informing the user about the wrong link
    
    ## Testing behaviour for wrong activation token in the link
    get edit_account_activation_path("wrong", email: user.email)
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select ".alert-danger"  # Notice informing the user about the wrong link

    # Testing behaviour for the right account activation link
    get edit_account_activation_path(user.activation_token, email: user.email)
    assert user.reload.activated?
    assert is_logged_in?
    assert_redirected_to user
    follow_redirect!
    assert_template 'users/show'
    assert_select ".alert-success"  # Notice informing the user about succesfull activation
  end
  
end
