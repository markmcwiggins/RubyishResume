require 'test_helper'

class ProfsocietiesControllerTest < ActionController::TestCase
  setup do
    @profsociety = profsocieties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profsocieties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profsociety" do
    assert_difference('Profsociety.count') do
      post :create, profsociety: { socname: @profsociety.socname }
    end

    assert_redirected_to profsociety_path(assigns(:profsociety))
  end

  test "should show profsociety" do
    get :show, id: @profsociety
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profsociety
    assert_response :success
  end

  test "should update profsociety" do
    put :update, id: @profsociety, profsociety: { socname: @profsociety.socname }
    assert_redirected_to profsociety_path(assigns(:profsociety))
  end

  test "should destroy profsociety" do
    assert_difference('Profsociety.count', -1) do
      delete :destroy, id: @profsociety
    end

    assert_redirected_to profsocieties_path
  end
end
