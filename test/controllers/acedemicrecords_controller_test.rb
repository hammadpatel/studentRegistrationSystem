require 'test_helper'

class AcedemicrecordsControllerTest < ActionController::TestCase
  setup do
    @acedemicrecord = acedemicrecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acedemicrecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acedemicrecord" do
    assert_difference('Acedemicrecord.count') do
      post :create, acedemicrecord: { matriculation/olevel: @acedemicrecord.matriculation/olevel, name_of_school/college: @acedemicrecord.name_of_school/college }
    end

    assert_redirected_to acedemicrecord_path(assigns(:acedemicrecord))
  end

  test "should show acedemicrecord" do
    get :show, id: @acedemicrecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acedemicrecord
    assert_response :success
  end

  test "should update acedemicrecord" do
    patch :update, id: @acedemicrecord, acedemicrecord: { matriculation/olevel: @acedemicrecord.matriculation/olevel, name_of_school/college: @acedemicrecord.name_of_school/college }
    assert_redirected_to acedemicrecord_path(assigns(:acedemicrecord))
  end

  test "should destroy acedemicrecord" do
    assert_difference('Acedemicrecord.count', -1) do
      delete :destroy, id: @acedemicrecord
    end

    assert_redirected_to acedemicrecords_path
  end
end
