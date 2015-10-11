require 'test_helper'

class SportpinsControllerTest < ActionController::TestCase
  setup do
    @sportpin = sportpins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sportpins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sportpin" do
    assert_difference('Sportpin.count') do
      post :create, sportpin: { description: @sportpin.description }
    end

    assert_redirected_to sportpin_path(assigns(:sportpin))
  end

  test "should show sportpin" do
    get :show, id: @sportpin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sportpin
    assert_response :success
  end

  test "should update sportpin" do
    patch :update, id: @sportpin, sportpin: { description: @sportpin.description }
    assert_redirected_to sportpin_path(assigns(:sportpin))
  end

  test "should destroy sportpin" do
    assert_difference('Sportpin.count', -1) do
      delete :destroy, id: @sportpin
    end

    assert_redirected_to sportpins_path
  end
end
