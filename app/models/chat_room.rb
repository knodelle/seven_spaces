class ChatRoom < ApplicationRecord
  has_many :tags
  has_many :subscriptions, dependent: :destroy
end
