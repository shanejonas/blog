require 'test_helper'

class PortfolioControllerTest < ActionController::TestCase
  test "should get thesis" do
    get :thesis
    assert_response :success
  end

  test "should get musicbook" do
    get :musicbook
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get bomb" do
    get :bomb
    assert_response :success
  end

end
