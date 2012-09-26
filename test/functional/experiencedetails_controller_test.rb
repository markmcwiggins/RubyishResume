require 'test_helper'

class ExperiencedetailsControllerTest < ActionController::TestCase
  setup do
    @experiencedetail = experiencedetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiencedetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experiencedetail" do
    assert_difference('Experiencedetail.count') do
      post :create, experiencedetail: { description: @experiencedetail.description }
    end

    assert_redirected_to experiencedetail_path(assigns(:experiencedetail))
  end

  test "should show experiencedetail" do
    get :show, id: @experiencedetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiencedetail
    assert_response :success
  end

  test "should update experiencedetail" do
    put :update, id: @experiencedetail, experiencedetail: { description: @experiencedetail.description }
    assert_redirected_to experiencedetail_path(assigns(:experiencedetail))
  end

  test "should destroy experiencedetail" do
    assert_difference('Experiencedetail.count', -1) do
      delete :destroy, id: @experiencedetail
    end

    assert_redirected_to experiencedetails_path
  end
end
