class My::ChatRoomsController < ApplicationController
  before_action :set_chat_room, only: [:edit, :update, :destroy]

  def index
    @chat_rooms = ChatRoom.where(user: current_user)
    @sub = Subscription.where(user: current_user)
  end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = ChatRoom.new(chat_room_params)
    if @chat_room.save
      redirect_to chat_room_path(@chat_room)
     else
       render :new
    end
  end

  def edit

  end

  def update
    if @chat_room.update(chat_room_params)
      redirect_to chat_room_path(@chat_room)
    else
      render :edit
    end
  end

  def destroy
    @chat_room.destroy
    redirect_to chat_room_path(@chat_room), notice: 'The chatroom has been deleted.'
  end


  private

  def set_chat_room
    @chat_room = ChatRoom.find(params[:id])
  end

  def chat_room_params
    params.require(:chat_room).permit(:title, :description)
  end


end