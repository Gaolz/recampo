require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create user" do
    assert_not_nil create(:user)
  end

  test "should have lower username" do
    assert_equal "lower", create(:user, username: 'LOWER').username_lower
  end

  test "should save lower email" do
    assert_equal "lower@example.com", create(:user, email: 'LOWER@eXample.com').email_lower
  end
end
