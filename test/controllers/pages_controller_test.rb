require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get apply" do
    get :apply
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

end
