require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:ft_user)
    @other_user = users(:joker)
  end

  test "should get redirected to proper edit page when wrong user tries to get to the edit page" do
    log_in_as(@other_user, password: 'kill_batman2day')
    get edit_user_path(@user)
    assert_redirected_to edit_user_url(@other_user)
  end

  test "should get redirected to proper edit page when wrong user tries to update the profile" do
    log_in_as(@other_user, password: 'kill_batman2day')
    patch user_path(@user), params: { user: { name: @user.name, email: @user.email } }
    assert_redirected_to edit_user_url(@other_user)
    @user.reload
    assert_not_equal @other_user.name, @user.name
    assert_not_equal @other_user.email, @user.email
  end

  test "should get redirected to login if delete attempted without login" do
    assert_no_difference "User.count" do
      delete user_path(@other_user)
    end
    assert_redirected_to login_url
  end

  test "should get redirected to root if delete attempted as non-admin user" do
    log_in_as(@other_user, password: 'kill_batman2day')
    assert_no_difference "User.count" do
      delete user_path(@user)
    end
    assert_redirected_to root_url
  end

  test "should delete user if admin deletes it" do
    log_in_as(@user)
    assert_difference "User.count", -1 do
      delete user_path(@other_user)
    end
    assert_redirected_to users_url
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

end
