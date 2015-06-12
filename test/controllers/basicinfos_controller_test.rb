require 'test_helper'

class BasicinfosControllerTest < ActionController::TestCase
  setup do
    @basicinfo = basicinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basicinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basicinfo" do
    assert_difference('Basicinfo.count') do
      post :create, basicinfo: { alternate_email: @basicinfo.alternate_email, place_of_birth: @basicinfo.place_of_birth }
    end

    assert_redirected_to basicinfo_path(assigns(:basicinfo))
  end

  test "should show basicinfo" do
    get :show, id: @basicinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basicinfo
    assert_response :success
  end

  test "should update basicinfo" do
    patch :update, id: @basicinfo, basicinfo: { alternate_email: @basicinfo.alternate_email, place_of_birth: @basicinfo.place_of_birth }
    assert_redirected_to basicinfo_path(assigns(:basicinfo))
  end

  test "should destroy basicinfo" do
    assert_difference('Basicinfo.count', -1) do
      delete :destroy, id: @basicinfo
    end

    assert_redirected_to basicinfos_path
  end
end
