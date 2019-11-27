class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
  end

end
