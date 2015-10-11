require 'test_helper'

class TravelpinsControllerTest < ActionController::TestCase
  setup do
    @travelpin = travelpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travelpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travelpin" do
    assert_difference('Travelpin.count') do
      post :create, travelpin: { description: @travelpin.description }
    end

    assert_redirected_to travelpin_path(assigns(:travelpin))
  end

  test "should show travelpin" do
    get :show, id: @travelpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travelpin
    assert_response :success
  end

  test "should update travelpin" do
    patch :update, id: @travelpin, travelpin: { description: @travelpin.description }
    assert_redirected_to travelpin_path(assigns(:travelpin))
  end

  test "should destroy travelpin" do
    assert_difference('Travelpin.count', -1) do
      delete :destroy, id: @travelpin
    end

    assert_redirected_to travelpins_path
  end
end
