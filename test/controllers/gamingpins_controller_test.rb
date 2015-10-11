require 'test_helper'

class GamingpinsControllerTest < ActionController::TestCase
  setup do
    @gamingpin = gamingpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamingpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamingpin" do
    assert_difference('Gamingpin.count') do
      post :create, gamingpin: { description: @gamingpin.description }
    end

    assert_redirected_to gamingpin_path(assigns(:gamingpin))
  end

  test "should show gamingpin" do
    get :show, id: @gamingpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamingpin
    assert_response :success
  end

  test "should update gamingpin" do
    patch :update, id: @gamingpin, gamingpin: { description: @gamingpin.description }
    assert_redirected_to gamingpin_path(assigns(:gamingpin))
  end

  test "should destroy gamingpin" do
    assert_difference('Gamingpin.count', -1) do
      delete :destroy, id: @gamingpin
    end

    assert_redirected_to gamingpins_path
  end
end
