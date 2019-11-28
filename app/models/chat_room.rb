class ChatRoom < ApplicationRecord
  has_many :messages
  has_many :chat_room_tags, inverse_of: :chat_room
  has_many :tags, through: :chat_room_tags
  has_many :subscriptions, dependent: :destroy
  accepts_nested_attributes_for :chat_room_tags,
                                allow_destroy: true
end
