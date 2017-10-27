require 'test_helper'

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landings_index_url
    assert_response :success
  end

  test "should get create" do
    get landings_create_url
    assert_response :success
  end

  test "should get update" do
    get landings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get landings_destroy_url
    assert_response :success
  end

  test "should get new" do
    get landings_new_url
    assert_response :success
  end

  test "should get edit" do
    get landings_edit_url
    assert_response :success
  end

end
