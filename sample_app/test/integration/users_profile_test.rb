require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:ft_user) 
  end

  test "should get 10 most recent posts upon login" do        
    log_in_as(@user)

    assert_redirected_to @user      
    follow_redirect!

    assert_template 'users/show'           
    assert_select ".microposts" do
      assert_select "li", 10
    end
    @user.microposts.paginate(page: 1, per_page: 10).each do |post|
      assert_match post.content, response.body
    end
  end

end
