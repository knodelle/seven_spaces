class My::MessagesController < ApplicationController
  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @my_message = Message.new(messages_params)
    @my_message.chat_room = @chat_room
    @my_message.user = current_user
    if @my_message.save
      respond_to do |format|
        format.html { redirect_to my_chat_room_path(@chat_room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  private

  def messages_params
    params.require(:message).permit(:content)
  end
end
