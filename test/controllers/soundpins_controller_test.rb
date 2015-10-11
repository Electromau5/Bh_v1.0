require 'test_helper'

class SoundpinsControllerTest < ActionController::TestCase
  setup do
    @soundpin = soundpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soundpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soundpin" do
    assert_difference('Soundpin.count') do
      post :create, soundpin: { description: @soundpin.description }
    end

    assert_redirected_to soundpin_path(assigns(:soundpin))
  end

  test "should show soundpin" do
    get :show, id: @soundpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soundpin
    assert_response :success
  end

  test "should update soundpin" do
    patch :update, id: @soundpin, soundpin: { description: @soundpin.description }
    assert_redirected_to soundpin_path(assigns(:soundpin))
  end

  test "should destroy soundpin" do
    assert_difference('Soundpin.count', -1) do
      delete :destroy, id: @soundpin
    end

    assert_redirected_to soundpins_path
  end
end
