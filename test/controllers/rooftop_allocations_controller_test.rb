require 'test_helper'

class RooftopAllocationsControllerTest < ActionController::TestCase
  setup do
    @rooftop_allocation = rooftop_allocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooftop_allocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rooftop_allocation" do
    assert_difference('RooftopAllocation.count') do
      post :create, rooftop_allocation: { allocation: @rooftop_allocation.allocation, allocation_basis: @rooftop_allocation.allocation_basis, period: @rooftop_allocation.period, product: @rooftop_allocation.product }
    end

    assert_redirected_to rooftop_allocation_path(assigns(:rooftop_allocation))
  end

  test "should show rooftop_allocation" do
    get :show, id: @rooftop_allocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rooftop_allocation
    assert_response :success
  end

  test "should update rooftop_allocation" do
    patch :update, id: @rooftop_allocation, rooftop_allocation: { allocation: @rooftop_allocation.allocation, allocation_basis: @rooftop_allocation.allocation_basis, period: @rooftop_allocation.period, product: @rooftop_allocation.product }
    assert_redirected_to rooftop_allocation_path(assigns(:rooftop_allocation))
  end

  test "should destroy rooftop_allocation" do
    assert_difference('RooftopAllocation.count', -1) do
      delete :destroy, id: @rooftop_allocation
    end

    assert_redirected_to rooftop_allocations_path
  end
end
