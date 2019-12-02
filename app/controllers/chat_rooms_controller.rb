class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
  end

  # def index
  #   if params[:tag]
  #     @chat_rooms = ChatRooms.tagged_with(params[:tag])
  #   else
  #     @chat_rooms = ChatRooms.all
  #   end
  # end

  def show
  end

  # private

  # def chat_room_params
  #   params.require(:chat_room).permit(:title, chat_room_tags: [:id])
  # end
end
