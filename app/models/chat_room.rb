class ChatRoom < ApplicationRecord
  has_many :messages
  has_many :chat_room_tags
  has_many :tags, through: :chat_room_tags
  has_many :subscriptions, dependent: :destroy
end
