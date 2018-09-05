require 'test_helper'

class WritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get writes_index_url
    assert_response :success
  end

end
