class AddPhotoToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :photo, :string
  end
end
