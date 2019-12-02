class My::MessagesController < ApplicationController
  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @my_message = Message.new(messages_params)
    @my_message.user_id = current_user.id
    @my_message.chat_room_id = @chat_room.id
    if @my_message.save
      redirect_to my_chat_room_path(@chat_room)
    else
      render :index
    end
  end

  private

  def messages_params
    params.require(:message).permit(:content)
  end
end
