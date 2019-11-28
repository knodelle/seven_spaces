class AddPhotoToChatRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :photo, :string, default: "https://img.icons8.com/small/1600/filled-chat.png"
  end
end
