require "test_helper"

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get download_cv" do
    get document_download_cv_url
    assert_response :success
  end
end
