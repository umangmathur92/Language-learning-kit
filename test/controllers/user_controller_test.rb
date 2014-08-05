require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get test_results" do
    get :test_results
    assert_response :success
  end

  test "should get tests_given" do
    get :tests_given
    assert_response :success
  end

end
