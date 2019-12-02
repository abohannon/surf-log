require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { date: @entry.date, description: @entry.description, end_time: @entry.end_time, location: @entry.location, primary_swell_angle: @entry.primary_swell_angle, primary_swell_direction: @entry.primary_swell_direction, rating: @entry.rating, start_time: @entry.start_time, tide_direction: @entry.tide_direction, tide_height: @entry.tide_height, wave_height: @entry.wave_height } }
    end

    assert_redirected_to entry_url(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { date: @entry.date, description: @entry.description, end_time: @entry.end_time, location: @entry.location, primary_swell_angle: @entry.primary_swell_angle, primary_swell_direction: @entry.primary_swell_direction, rating: @entry.rating, start_time: @entry.start_time, tide_direction: @entry.tide_direction, tide_height: @entry.tide_height, wave_height: @entry.wave_height } }
    assert_redirected_to entry_url(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
