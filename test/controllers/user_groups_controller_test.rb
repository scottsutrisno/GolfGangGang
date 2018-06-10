require 'test_helper'

class UserGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get user_groups_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_groups_update_url
    assert_response :success
  end

  test "should get create" do
    get user_groups_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_groups_destroy_url
    assert_response :success
  end

end
