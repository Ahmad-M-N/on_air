require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  fixtures :all

  def setup
    @user = users(:ft_user)
  end

  test "unsuccssessfull edit" do
    log_in_as(@user, remember_me: '0')
    get edit_user_path(@user.id)
    patch user_path(@user.id), params: {user: {name:"",
                                              email: "jk",
                                              password: "jk",
                                              password_confirmation: 'kj'},
                                        session: {user_id: @user.id}}
    
    assert_template "users/edit"
    assert_select "#error_explanation"
  end

  test "successfull edit" do
    log_in_as(@user, remember_me: '0')
    get edit_user_path(@user.id)
    new_name = "foo"
    new_email = "foo@bar.com"
    patch user_path(@user.id), params: {user: {name: new_name,
                                              email: new_email,
                                              password: "foo@bar.com",
                                              password_confirmation: 'foo@bar.com'},
                                        session: {user_id: @user.id}}
    
    assert_not flash.empty?, "flash is empty."
    assert_redirected_to @user, "redirect failed."
    @user.reload
    assert_equal new_name, @user.name, "name was not saved"
    assert_equal new_email, @user.email, "email was not saved"
  end

  test "redirect not logged in users trying to get to the edit page to login page" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "redirect not logged in users trying to get to the update a profile to login page" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect to user's edit page after logging in when they try to get to the page without logging in" do
    get edit_user_path(@user)
    assert_redirected_to login_url
    assert_not flash.empty?
    log_in_as(@user)
    assert_redirected_to edit_user_url(@user)
  end
end
