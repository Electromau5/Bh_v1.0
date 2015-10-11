require 'test_helper'

class ArtpinsControllerTest < ActionController::TestCase
  setup do
    @artpin = artpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artpin" do
    assert_difference('Artpin.count') do
      post :create, artpin: { description: @artpin.description }
    end

    assert_redirected_to artpin_path(assigns(:artpin))
  end

  test "should show artpin" do
    get :show, id: @artpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artpin
    assert_response :success
  end

  test "should update artpin" do
    patch :update, id: @artpin, artpin: { description: @artpin.description }
    assert_redirected_to artpin_path(assigns(:artpin))
  end

  test "should destroy artpin" do
    assert_difference('Artpin.count', -1) do
      delete :destroy, id: @artpin
    end

    assert_redirected_to artpins_path
  end
end
