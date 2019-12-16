require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
    @user = users(:adam)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_redirected_to login_path

    log_in_as(@user)
    get new_location_url
    assert_response :success
    assert_template 'locations/new'
  end

  test "should create location" do
    log_in_as(@user)
    assert_difference('Location.count') do
      post locations_url, params: { location: { city:           @location.city,
                                                country:        @location.country,
                                                description:    @location.description,
                                                lat:            @location.lat,
                                                lon:            @location.lon,
                                                name:           @location.name,
                                                state:          @location.state } }
    end

    location = Location.last
    assert location.user_id == @user.id
    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    log_in_as(@user)
    patch location_url(@location), params: { location: { city: @location.city, country: @location.country, description: @location.description, lat: @location.lat, lon: @location.lon, name: @location.name, state: @location.state } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    log_in_as(@user)
    assert_difference('Location.count', -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
