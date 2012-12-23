require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get about_me" do
    get :about_me
    assert_response :success
  end

end
