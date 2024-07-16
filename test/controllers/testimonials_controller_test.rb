require "test_helper"

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get testimonials_create_url
    assert_response :success
  end

  test "should get index" do
    get testimonials_index_url
    assert_response :success
  end
end
