require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid user should not signup" do
    get signup_path
    assert_no_difference 'User.count' do 
      post users_path, params: { user: { name:'',
                                                            email: "user@invalid",
                                                            password: "doo",
                                                            password_confirmation: "dkj"}}
    end
    assert_template "users/new"
    #~ assert_select "div#error_explanation"
    #~ assert_select "div.field_with_errors" do
      #~ assert_select "label", text: "Name"
      #~ assert_select "label", text: "Email"
    #~ end
  end
  
  test "valid user should signup" do
    get signup_path
    assert_difference 'User.count', 1 do 
      post users_path, params: { user: { name:'valid',
                                                            email: "user@valid.com",
                                                            password: "###123abc",
                                                            password_confirmation: "###123abc"}}
    end
    follow_redirect!
    assert is_logged_in?
    assert_template "users/show"
  end
  
end
