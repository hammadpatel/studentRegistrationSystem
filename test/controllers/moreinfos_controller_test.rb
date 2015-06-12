require 'test_helper'

class MoreinfosControllerTest < ActionController::TestCase
  setup do
    @moreinfo = moreinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moreinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moreinfo" do
    assert_difference('Moreinfo.count') do
      post :create, moreinfo: { Have_you_studied_at_KU_before?: @moreinfo.Have_you_studied_at_KU_before? }
    end

    assert_redirected_to moreinfo_path(assigns(:moreinfo))
  end

  test "should show moreinfo" do
    get :show, id: @moreinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moreinfo
    assert_response :success
  end

  test "should update moreinfo" do
    patch :update, id: @moreinfo, moreinfo: { Have_you_studied_at_KU_before?: @moreinfo.Have_you_studied_at_KU_before? }
    assert_redirected_to moreinfo_path(assigns(:moreinfo))
  end

  test "should destroy moreinfo" do
    assert_difference('Moreinfo.count', -1) do
      delete :destroy, id: @moreinfo
    end

    assert_redirected_to moreinfos_path
  end
end
