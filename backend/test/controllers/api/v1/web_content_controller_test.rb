require "test_helper"

class Api::V1::WebContentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_web_content_index_url
    assert_response :success
  end
end
