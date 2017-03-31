require 'test_helper'

class StoreBannersControllerTest < ActionController::TestCase
  setup do
    @store_banner = store_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_banner" do
    assert_difference('StoreBanner.count') do
      post :create, store_banner: { name: @store_banner.name }
    end

    assert_redirected_to store_banner_path(assigns(:store_banner))
  end

  test "should show store_banner" do
    get :show, id: @store_banner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_banner
    assert_response :success
  end

  test "should update store_banner" do
    patch :update, id: @store_banner, store_banner: { name: @store_banner.name }
    assert_redirected_to store_banner_path(assigns(:store_banner))
  end

  test "should destroy store_banner" do
    assert_difference('StoreBanner.count', -1) do
      delete :destroy, id: @store_banner
    end

    assert_redirected_to store_banners_path
  end
end
