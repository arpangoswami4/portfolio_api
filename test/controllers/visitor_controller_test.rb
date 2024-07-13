require "test_helper"

class VisitorControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get visitor_create_url
    assert_response :success
  end
end
