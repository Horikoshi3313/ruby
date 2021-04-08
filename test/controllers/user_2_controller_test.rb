require "test_helper"

class User2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_2_index_url
    assert_response :success
  end
end
