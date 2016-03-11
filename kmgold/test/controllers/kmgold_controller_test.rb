require 'test_helper'

class KmgoldControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
