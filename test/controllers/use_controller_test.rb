require "test_helper"

class UseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get use_index_url
    assert_response :success
  end

  test "should get show" do
    get use_show_url
    assert_response :success
  end

  test "should get new" do
    get use_new_url
    assert_response :success
  end

  test "should get edit" do
    get use_edit_url
    assert_response :success
  end
end
