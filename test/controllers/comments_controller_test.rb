require "test_helper"

class CommmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commments_create_url
    assert_response :success
  end
end
