require 'test_helper'

class LossPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loss_place = loss_places(:one)
  end

  test "should get index" do
    get loss_places_url
    assert_response :success
  end

  test "should get new" do
    get new_loss_place_url
    assert_response :success
  end

  test "should create loss_place" do
    assert_difference('LossPlace.count') do
      post loss_places_url, params: { loss_place: { latitude: @loss_place.latitude, longitude: @loss_place.longitude } }
    end

    assert_redirected_to loss_place_url(LossPlace.last)
  end

  test "should show loss_place" do
    get loss_place_url(@loss_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_loss_place_url(@loss_place)
    assert_response :success
  end

  test "should update loss_place" do
    patch loss_place_url(@loss_place), params: { loss_place: { latitude: @loss_place.latitude, longitude: @loss_place.longitude } }
    assert_redirected_to loss_place_url(@loss_place)
  end

  test "should destroy loss_place" do
    assert_difference('LossPlace.count', -1) do
      delete loss_place_url(@loss_place)
    end

    assert_redirected_to loss_places_url
  end
end
