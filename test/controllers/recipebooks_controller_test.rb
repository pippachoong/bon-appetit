require 'test_helper'

class RecipebooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipebooks_new_url
    assert_response :success
  end

  test "should get create" do
    get recipebooks_create_url
    assert_response :success
  end

  test "should get index" do
    get recipebooks_index_url
    assert_response :success
  end

  test "should get show" do
    get recipebooks_show_url
    assert_response :success
  end

  test "should get edit" do
    get recipebooks_edit_url
    assert_response :success
  end

  test "should get update" do
    get recipebooks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recipebooks_destroy_url
    assert_response :success
  end

end
