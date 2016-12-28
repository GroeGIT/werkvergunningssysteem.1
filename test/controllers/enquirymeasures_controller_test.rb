require 'test_helper'

class EnquirymeasuresControllerTest < ActionController::TestCase
  setup do
    @enquirymeasure = enquirymeasures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enquirymeasures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enquirymeasure" do
    assert_difference('Enquirymeasure.count') do
      post :create, enquirymeasure: { done: @enquirymeasure.done, enquiry_id: @enquirymeasure.enquiry_id, needed: @enquirymeasure.needed, responsible: @enquirymeasure.responsible }
    end

    assert_redirected_to enquirymeasure_path(assigns(:enquirymeasure))
  end

  test "should show enquirymeasure" do
    get :show, id: @enquirymeasure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enquirymeasure
    assert_response :success
  end

  test "should update enquirymeasure" do
    patch :update, id: @enquirymeasure, enquirymeasure: { done: @enquirymeasure.done, enquiry_id: @enquirymeasure.enquiry_id, needed: @enquirymeasure.needed, responsible: @enquirymeasure.responsible }
    assert_redirected_to enquirymeasure_path(assigns(:enquirymeasure))
  end

  test "should destroy enquirymeasure" do
    assert_difference('Enquirymeasure.count', -1) do
      delete :destroy, id: @enquirymeasure
    end

    assert_redirected_to enquirymeasures_path
  end
end
