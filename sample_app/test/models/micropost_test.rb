require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:ft_user)
    @micropost = @user.microposts.build(content: "hello")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "microposts must have a user id" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "microposts must have a content" do
    @micropost.content = nil
    assert_not @micropost.valid?
  end

  test "content must be less than 141 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end

  test "microposts should be in reverse order of their creation" do
    assert_equal microposts(:most_recent), Micropost.first
  end

end
