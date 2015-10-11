require 'test_helper'

class FashionpinsControllerTest < ActionController::TestCase
  setup do
    @fashionpin = fashionpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fashionpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fashionpin" do
    assert_difference('Fashionpin.count') do
      post :create, fashionpin: { description: @fashionpin.description }
    end

    assert_redirected_to fashionpin_path(assigns(:fashionpin))
  end

  test "should show fashionpin" do
    get :show, id: @fashionpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fashionpin
    assert_response :success
  end

  test "should update fashionpin" do
    patch :update, id: @fashionpin, fashionpin: { description: @fashionpin.description }
    assert_redirected_to fashionpin_path(assigns(:fashionpin))
  end

  test "should destroy fashionpin" do
    assert_difference('Fashionpin.count', -1) do
      delete :destroy, id: @fashionpin
    end

    assert_redirected_to fashionpins_path
  end
end
