require "test_helper"

class SesionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesions_new_url
    assert_response :success
  end

  test "should get create" do
    get sesions_create_url
    assert_response :success
  end

  test "should get login" do
    get sesions_login_url
    assert_response :success
  end

  test "should get welcome" do
    get sesions_welcome_url
    assert_response :success
  end
end
