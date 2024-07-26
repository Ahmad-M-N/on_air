require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:ft_user)
    @micropost = microposts(:one)
  end

  test "user must be logged in to create microposts" do
    assert_no_difference 'Micropost.count' do
      post microposts_path, params: {micropost: {content: "I should not be posted"}}
    end
    assert_redirected_to login_url

  end

  test "user must be logged in to delete microposts" do
    assert_no_difference 'Micropost.count' do
      delete micropost_path(@micropost)
    end
    assert_redirected_to login_url

  end

end
