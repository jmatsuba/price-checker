require 'test_helper'

class PriceObservationsControllerTest < ActionController::TestCase
  setup do
    @price_observation = price_observations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:price_observations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create price_observation" do
    assert_difference('PriceObservation.count') do
      post :create, price_observation: { item_id: @price_observation.item_id, price: @price_observation.price, store_id: @price_observation.store_id, user_id: @price_observation.user_id }
    end

    assert_redirected_to price_observation_path(assigns(:price_observation))
  end

  test "should show price_observation" do
    get :show, id: @price_observation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @price_observation
    assert_response :success
  end

  test "should update price_observation" do
    patch :update, id: @price_observation, price_observation: { item_id: @price_observation.item_id, price: @price_observation.price, store_id: @price_observation.store_id, user_id: @price_observation.user_id }
    assert_redirected_to price_observation_path(assigns(:price_observation))
  end

  test "should destroy price_observation" do
    assert_difference('PriceObservation.count', -1) do
      delete :destroy, id: @price_observation
    end

    assert_redirected_to price_observations_path
  end
end
