require 'test_helper'

class EnquiriesControllerTest < ActionController::TestCase
  setup do
    @enquiry = enquiries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enquiry" do
    assert_difference('Enquiry.count') do
      post :create, enquiry: { amount: @enquiry.amount, date: @enquiry.date, description: @enquiry.description, location: @enquiry.location, reference: @enquiry.reference }
    end

    assert_redirected_to enquiry_path(assigns(:enquiry))
  end

  test "should show enquiry" do
    get :show, id: @enquiry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enquiry
    assert_response :success
  end

  test "should update enquiry" do
    patch :update, id: @enquiry, enquiry: { amount: @enquiry.amount, date: @enquiry.date, description: @enquiry.description, location: @enquiry.location, reference: @enquiry.reference }
    assert_redirected_to enquiry_path(assigns(:enquiry))
  end

  test "should destroy enquiry" do
    assert_difference('Enquiry.count', -1) do
      delete :destroy, id: @enquiry
    end

    assert_redirected_to enquiries_path
  end
end
