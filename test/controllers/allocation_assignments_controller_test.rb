require 'test_helper'

class AllocationAssignmentsControllerTest < ActionController::TestCase
  setup do
    @allocation_assignment = allocation_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allocation_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allocation_assignment" do
    assert_difference('AllocationAssignment.count') do
      post :create, allocation_assignment: { allocation_basis: @allocation_assignment.allocation_basis, allocation_method: @allocation_assignment.allocation_method, location_code: @allocation_assignment.location_code, vendor_name: @allocation_assignment.vendor_name }
    end

    assert_redirected_to allocation_assignment_path(assigns(:allocation_assignment))
  end

  test "should show allocation_assignment" do
    get :show, id: @allocation_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allocation_assignment
    assert_response :success
  end

  test "should update allocation_assignment" do
    patch :update, id: @allocation_assignment, allocation_assignment: { allocation_basis: @allocation_assignment.allocation_basis, allocation_method: @allocation_assignment.allocation_method, location_code: @allocation_assignment.location_code, vendor_name: @allocation_assignment.vendor_name }
    assert_redirected_to allocation_assignment_path(assigns(:allocation_assignment))
  end

  test "should destroy allocation_assignment" do
    assert_difference('AllocationAssignment.count', -1) do
      delete :destroy, id: @allocation_assignment
    end

    assert_redirected_to allocation_assignments_path
  end
end
