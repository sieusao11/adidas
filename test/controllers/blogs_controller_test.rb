require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get news" do
    get blogs_news_url
    assert_response :success
  end

end
