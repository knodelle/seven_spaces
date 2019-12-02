class MessagesController < ApplicationController
  def index
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @messages = @chat_room.messages
  end
end
