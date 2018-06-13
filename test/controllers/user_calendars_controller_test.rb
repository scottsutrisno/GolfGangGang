require 'test_helper'

class UserCalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_calendars_index_url
    assert_response :success
  end

  test "should get new" do
    get user_calendars_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_calendars_edit_url
    assert_response :success
  end

  test "should get show" do
    get user_calendars_show_url
    assert_response :success
  end

  test "should get create" do
    get user_calendars_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_calendars_destroy_url
    assert_response :success
  end

end
