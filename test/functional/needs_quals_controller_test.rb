require 'test_helper'

class NeedsQualsControllerTest < ActionController::TestCase
  setup do
    @needs_qual = needs_quals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:needs_quals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create needs_qual" do
    assert_difference('NeedsQual.count') do
      post :create, needs_qual: { myquals: @needs_qual.myquals, yourneeds: @needs_qual.yourneeds }
    end

    assert_redirected_to needs_qual_path(assigns(:needs_qual))
  end

  test "should show needs_qual" do
    get :show, id: @needs_qual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @needs_qual
    assert_response :success
  end

  test "should update needs_qual" do
    put :update, id: @needs_qual, needs_qual: { myquals: @needs_qual.myquals, yourneeds: @needs_qual.yourneeds }
    assert_redirected_to needs_qual_path(assigns(:needs_qual))
  end

  test "should destroy needs_qual" do
    assert_difference('NeedsQual.count', -1) do
      delete :destroy, id: @needs_qual
    end

    assert_redirected_to needs_quals_path
  end
end
