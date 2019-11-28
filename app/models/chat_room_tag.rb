class ChatRoomTag < ApplicationRecord
  belongs_to :chat_room, inverse_of: :chat_room_tags
  belongs_to :tag
end
