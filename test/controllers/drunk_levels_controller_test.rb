require 'test_helper'

class DrunkLevelsControllerTest < ActionController::TestCase
  setup do
    @drunk_level = drunk_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drunk_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drunk_level" do
    assert_difference('DrunkLevel.count') do
      post :create, drunk_level: { description: @drunk_level.description, icon: @drunk_level.icon, name: @drunk_level.name }
    end

    assert_redirected_to drunk_level_path(assigns(:drunk_level))
  end

  test "should show drunk_level" do
    get :show, id: @drunk_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drunk_level
    assert_response :success
  end

  test "should update drunk_level" do
    patch :update, id: @drunk_level, drunk_level: { description: @drunk_level.description, icon: @drunk_level.icon, name: @drunk_level.name }
    assert_redirected_to drunk_level_path(assigns(:drunk_level))
  end

  test "should destroy drunk_level" do
    assert_difference('DrunkLevel.count', -1) do
      delete :destroy, id: @drunk_level
    end

    assert_redirected_to drunk_levels_path
  end
end
