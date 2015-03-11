require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get sign-up" do
    get :sign-up
    assert_response :success
  end

  test "should get user-profile" do
    get :user-profile
    assert_response :success
  end

end
