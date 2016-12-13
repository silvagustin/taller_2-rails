require 'test_helper'

class BeaconsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get beacons_show_url
    assert_response :success
  end

  test "should get index" do
    get beacons_index_url
    assert_response :success
  end

  test "should get new" do
    get beacons_new_url
    assert_response :success
  end

  test "should get create" do
    get beacons_create_url
    assert_response :success
  end

  test "should get edit" do
    get beacons_edit_url
    assert_response :success
  end

  test "should get update" do
    get beacons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get beacons_destroy_url
    assert_response :success
  end

end
