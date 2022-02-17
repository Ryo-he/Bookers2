require "test_helper"

class BookUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get book_users_show_url
    assert_response :success
  end

  test "should get index" do
    get book_users_index_url
    assert_response :success
  end
end
