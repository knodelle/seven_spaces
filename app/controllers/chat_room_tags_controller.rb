class ChatRoomTagsController < ApplicationController
  def new
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @chat_room_tag = ChatRoomTag.new
  end

  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @chat_room_tag = ChatRoomTag.new(chat_room_tag_params)
    @chat_room_tag.chat_room = @chat_room
    if @pchat_room_tag.save
      redirect_to chat_rooms_path(@chat_room.chat_rooms) # ??
    else
      render :new
    end
  end

  private

  def chat_room_params
    params.require(:chat_room_tag).permit(:tag_id)
  end
end
