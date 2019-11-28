class AddAvatarToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string, default: "https://img.icons8.com/color/1600/avatar.png"
  end
end
