require 'test_helper'

class DirectorsControllerTest < ActionController::TestCase
  setup do
    @director = directors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create director" do
    assert_difference('Director.count') do
      post :create, director: { dob: @director.dob, name: @director.name }
    end

    assert_redirected_to director_path(assigns(:director))
  end

  test "should show director" do
    get :show, id: @director
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @director
    assert_response :success
  end

  test "should update director" do
    put :update, id: @director, director: { dob: @director.dob, name: @director.name }
    assert_redirected_to director_path(assigns(:director))
  end

  test "should destroy director" do
    assert_difference('Director.count', -1) do
      delete :destroy, id: @director
    end

    assert_redirected_to directors_path
  end
end
