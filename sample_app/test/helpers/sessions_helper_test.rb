require 'test_helper'

class SessionsHelperTest < ActionView::TestCase
    fixtures :all

    def setup
      @user = users(:ft_user)
      remember(@user)
    end

    test "no user loads if a remember_token is wrong" do
      @user.update_attribute(:remember_digest, User.digest(User.new_token))
      assert_nil current_user
    end

    test "to see if the current user is being loaded from cookies properly" do
      assert_equal @user, current_user
    end
end

