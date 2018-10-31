require 'test_helper'

class CollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get collections_all_url
    assert_response :success
  end

end
