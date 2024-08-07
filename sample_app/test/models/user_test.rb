require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "  "
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a"*51
    assert_not @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "a"*244 + "@example.com"
    assert_not @user.valid?
  end
  
  test "valid emails should go through" do
    valid_addresses = %w[USER@foo.COM THE_US-ER@foo.bar.org first.last@foo.jp]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid? , "#{valid_address.inspect} is not valid"
    end
  end 
  
  test "invalid emails should not go through" do
    invalid_addresses = %w[USER@foo. COM THE_US-ER @foo.bar.org first.last @foo.jp]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} is valid"
    end
  end
  
  test  "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "password should not be blank" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  
  test "password lenght should be at least 6 " do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end

  test "associated microposts should be destroyed when the user is destroyed" do
    @user.save
    @user.microposts.create!(content: "delete me")
    @user.microposts.create!(content: "delete me too")

    assert_difference 'Micropost.count', -2 do
      @user.destroy
    end
  end

end
