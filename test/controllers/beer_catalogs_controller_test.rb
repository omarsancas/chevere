require 'test_helper'

class BeerCatalogsControllerTest < ActionController::TestCase
  setup do
    @beer_catalog = beer_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_catalog" do
    assert_difference('BeerCatalog.count') do
      post :create, beer_catalog: { beer_name: @beer_catalog.beer_name, price: @beer_catalog.price }
    end

    assert_redirected_to beer_catalog_path(assigns(:beer_catalog))
  end

  test "should show beer_catalog" do
    get :show, id: @beer_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_catalog
    assert_response :success
  end

  test "should update beer_catalog" do
    patch :update, id: @beer_catalog, beer_catalog: { beer_name: @beer_catalog.beer_name, price: @beer_catalog.price }
    assert_redirected_to beer_catalog_path(assigns(:beer_catalog))
  end

  test "should destroy beer_catalog" do
    assert_difference('BeerCatalog.count', -1) do
      delete :destroy, id: @beer_catalog
    end

    assert_redirected_to beer_catalogs_path
  end
end
