require "test_helper"

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get visitor_create_url
    assert_response :success
  end
end
