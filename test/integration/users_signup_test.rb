require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: {  name: '',
                                          email: '' } }
    end

    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post signup_path, params: { user: {  name: 'adam',
                                          email: 'adam@test.com' } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
