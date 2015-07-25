require 'test_helper'

class LearnControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get pros" do
    get :pros
    assert_response :success
  end

  test "should get cons" do
    get :cons
    assert_response :success
  end

  test "should get conclusion" do
    get :conclusion
    assert_response :success
  end

end
