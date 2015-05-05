require 'test_helper'

class WelcomePagesControllerTest < ActionController::TestCase
  test "should get shop" do
    get :shop
    assert_response :success
  end

  test "should get publishing" do
    get :publishing
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

  test "should get my_profile" do
    get :my_profile
    assert_response :success
  end

end
