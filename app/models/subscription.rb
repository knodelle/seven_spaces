class Subscription < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :chat_room, dependent: :destroy
end
