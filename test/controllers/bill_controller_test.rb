require "test_helper"

class BillControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get bill_generate_url
    assert_response :success
  end
end
