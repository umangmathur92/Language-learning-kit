require 'test_helper'

class AuthorControllerTest < ActionController::TestCase
  test "should get question_by_author" do
    get :question_by_author
    assert_response :success
  end

end
