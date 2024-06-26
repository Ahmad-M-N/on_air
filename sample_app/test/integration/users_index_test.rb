require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  def setup
    @admin = users(:ft_user)
    @non_admin = users(:joker)
  end

  test "index as admin including pagination and delete links" do
    log_in_as(@admin)
    get users_path
    assert_template 'users/index'
    assert_select "div.pagination", 2
    assert_select "ul.pagination", 2
    assert_select ".users" do
      assert_select "li", 30
    end
    User.paginate(page: 1).each do |user|
      assert_select 'a[href=?]', user_path(user), text: user.name
      unless user == @admin
        assert_select 'a[href=?]', user_path(user), text: 'Delete'
      end
    end
  end

  test "non-admin should not see delete at index" do
    log_in_as(@non_admin, password: "kill_Batman2day")
    get users_path
    assert_select 'a', text: 'delete', count: 0
  end

end
