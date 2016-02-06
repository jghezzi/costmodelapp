require 'test_helper'

class RooftopsControllerTest < ActionController::TestCase
  setup do
    @rooftop = rooftops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooftops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rooftop" do
    assert_difference('Rooftop.count') do
      post :create, rooftop: { period: @rooftop.period, product: @rooftop.product, rooftops: @rooftop.rooftops }
    end

    assert_redirected_to rooftop_path(assigns(:rooftop))
  end

  test "should show rooftop" do
    get :show, id: @rooftop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rooftop
    assert_response :success
  end

  test "should update rooftop" do
    patch :update, id: @rooftop, rooftop: { period: @rooftop.period, product: @rooftop.product, rooftops: @rooftop.rooftops }
    assert_redirected_to rooftop_path(assigns(:rooftop))
  end

  test "should destroy rooftop" do
    assert_difference('Rooftop.count', -1) do
      delete :destroy, id: @rooftop
    end

    assert_redirected_to rooftops_path
  end
end
