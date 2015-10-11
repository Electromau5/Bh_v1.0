require 'test_helper'

class PhonepinsControllerTest < ActionController::TestCase
  setup do
    @phonepin = phonepins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phonepins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phonepin" do
    assert_difference('Phonepin.count') do
      post :create, phonepin: { description: @phonepin.description }
    end

    assert_redirected_to phonepin_path(assigns(:phonepin))
  end

  test "should show phonepin" do
    get :show, id: @phonepin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phonepin
    assert_response :success
  end

  test "should update phonepin" do
    patch :update, id: @phonepin, phonepin: { description: @phonepin.description }
    assert_redirected_to phonepin_path(assigns(:phonepin))
  end

  test "should destroy phonepin" do
    assert_difference('Phonepin.count', -1) do
      delete :destroy, id: @phonepin
    end

    assert_redirected_to phonepins_path
  end
end
