class ChatRoom < ApplicationRecord
  has_many :subscriptions, dependent: :destroy
end
