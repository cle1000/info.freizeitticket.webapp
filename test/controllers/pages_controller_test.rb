require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get impressum" do
    get :impressum
    assert_response :success
  end

end
