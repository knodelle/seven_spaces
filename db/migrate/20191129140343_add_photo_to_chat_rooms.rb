class AddPhotoToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :photo, :string, default: "https://www.trzcacak.rs/myfile/detail/227-2273042_live-chat-live-chat-icon-png.png"
  end
end
