require 'test_helper'

class BibliographiesControllerTest < ActionController::TestCase
  setup do
    @bibliography = bibliographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bibliographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bibliography" do
    assert_difference('Bibliography.count') do
      post :create, bibliography: { author_or_url: @bibliography.author_or_url, title: @bibliography.title }
    end

    assert_redirected_to bibliography_path(assigns(:bibliography))
  end

  test "should show bibliography" do
    get :show, id: @bibliography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bibliography
    assert_response :success
  end

  test "should update bibliography" do
    put :update, id: @bibliography, bibliography: { author_or_url: @bibliography.author_or_url, title: @bibliography.title }
    assert_redirected_to bibliography_path(assigns(:bibliography))
  end

  test "should destroy bibliography" do
    assert_difference('Bibliography.count', -1) do
      delete :destroy, id: @bibliography
    end

    assert_redirected_to bibliographies_path
  end
end
