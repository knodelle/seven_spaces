class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :chat_room_tags, inverse_of: :chat_room, dependent: :destroy
  has_many :tags, through: :chat_room_tags
  has_many :subscriptions, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :chat_room_tags,
                                allow_destroy: true
  mount_uploader :photo, PhotoUploader
end
