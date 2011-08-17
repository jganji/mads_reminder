require 'test_helper'

class FileControllerTest < ActionController::TestCase
  test "should get import" do
    get :import
    assert_response :success
  end

end
