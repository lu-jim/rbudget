require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get user_name:string_url
    assert_response :success
  end
end
