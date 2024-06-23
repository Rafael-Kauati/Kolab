require "test_helper"

class SinginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get singin_index_url
    assert_response :success
  end
end
