require 'test_helper'

class StarttestControllerTest < ActionController::TestCase
  test "should get select_level" do
    get :select_level
    assert_response :success
  end

  test "should get random_test" do
    get :random_test
    assert_response :success
  end

end
