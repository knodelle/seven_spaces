class ChatRoomTag < ApplicationRecord
  belongs_to :chat_room
  belongs_to :tag
end
