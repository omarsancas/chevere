require 'test_helper'

class BeerTypesControllerTest < ActionController::TestCase
  setup do
    @beer_type = beer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_type" do
    assert_difference('BeerType.count') do
      post :create, beer_type: {  }
    end

    assert_redirected_to beer_type_path(assigns(:beer_type))
  end

  test "should show beer_type" do
    get :show, id: @beer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_type
    assert_response :success
  end

  test "should update beer_type" do
    patch :update, id: @beer_type, beer_type: {  }
    assert_redirected_to beer_type_path(assigns(:beer_type))
  end

  test "should destroy beer_type" do
    assert_difference('BeerType.count', -1) do
      delete :destroy, id: @beer_type
    end

    assert_redirected_to beer_types_path
  end
end
