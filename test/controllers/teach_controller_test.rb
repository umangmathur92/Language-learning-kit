require 'test_helper'

class TeachControllerTest < ActionController::TestCase
  test "should get teach_tut" do
    get :teach_tut
    assert_response :success
  end

end
