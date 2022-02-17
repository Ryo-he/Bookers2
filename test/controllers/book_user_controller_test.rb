require "test_helper"

class BookUserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get book_user_show_url
    assert_response :success
  end

  test "should get index" do
    get book_user_index_url
    assert_response :success
  end
end
