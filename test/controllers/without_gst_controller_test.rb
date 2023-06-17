require "test_helper"

class WithoutGstControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get without_gst_generate_url
    assert_response :success
  end
end
