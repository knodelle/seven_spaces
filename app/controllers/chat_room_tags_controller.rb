class ChatRoomTagsController < ApplicationController
  def new
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @chat_room_tag = ChatRoomTag.new
  end

  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @chat_room_tag = ChatRoomTag.new(chat_room_tag_params)
    @chat_room_tag.chat_room = @chat_room
    if @chat_room_tag.save
      redirect_to chat_rooms_path(@chat_room.chat_rooms) # ??
    else
      render :new
    end
  end

  # to do plus tard, rattacher à la view par du JS, hover

  # def edit
  #   @chat_room_tag = ChatRoomTag.find(params[:tag_id])
  # end

  # def update
  #   # @chat_room_tag = ChatRoomTag.new(chat_room_tag_params)
  #   # @chat_room_tag.chat_room = @chat_room
  #   @chat_room_tag = ChatRoomTag.find(params[:tag_id])
  #   if @chat_room_tag.update_attributes(chat_room_tag_allowed_params)
  #     redirect_to my_chat_rooms_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @chat_room_tag.destroy
    redirect_to my_chat_rooms_path(@chat_room), notice: 'The chatroom_tag has been deleted.'
  end

  private

  def chat_room_params
    params.require(:chat_room_tag).permit(:tag_id)
  end
end
