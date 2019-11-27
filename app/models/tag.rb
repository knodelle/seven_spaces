class Tag < ApplicationRecord
  has_many :chat_room_tags, dependent: :destroy
  has_many :chat_rooms, through: :chat_room_tags
  validates :name, presence: true
end
