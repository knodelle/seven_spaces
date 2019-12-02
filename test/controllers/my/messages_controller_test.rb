require 'test_helper'

class My::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_messages_new_url
    assert_response :success
  end

  test "should get create" do
    get my_messages_create_url
    assert_response :success
  end

end
