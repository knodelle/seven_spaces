require 'test_helper'

class ChatRoomTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chat_room_tags_new_url
    assert_response :success
  end

  test "should get create" do
    get chat_room_tags_create_url
    assert_response :success
  end

end
