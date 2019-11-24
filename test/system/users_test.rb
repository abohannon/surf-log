require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:adam)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end
end
