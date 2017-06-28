require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get user_name" do
    get user_user_name_url
    assert_response :success
  end

end
