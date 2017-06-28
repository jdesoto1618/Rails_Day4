require 'test_helper'

class CarInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get status" do
    get car_info_status_url
    assert_response :success
  end

end
