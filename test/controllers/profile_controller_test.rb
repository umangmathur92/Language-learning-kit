require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get viewtest" do
    get :viewtest
    assert_response :success
  end

end
