class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :chat_room, optional: true
  has_many :messages
  # validates :username, presence: true, uniqueness: true
  # validates :admin, presence: true, default: false
end
