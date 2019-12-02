class My::ChatRoomsController < ApplicationController
  before_action :set_chat_room, only: [:show, :edit, :update, :destroy]

  def index
    @chat_rooms = ChatRoom.where(user_id: current_user.id)
    @subscriptions = Subscription.where(user: current_user)
  end

  def show
    @chat_rooms = ChatRoom.where(user_id: current_user.id)
    @subscriptions = Subscription.where(chat_room_id: @chat_room)
    @chat_master = User.find(@chat_room.user_id)
    @users = @subscriptions.map do |subscription|
      User.find(subscription.user_id)
    end
    @messages = @chat_room.messages
    @message = Message.new
  end

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = ChatRoom.new(chat_room_allowed_params)
    @chat_room.user_id = current_user.id
    if @chat_room.save
      redirect_to my_chat_rooms_path
    else
      render :new
    end
  end

  def edit
    @chat_room = ChatRoom.find(params[:id])
  end

  def update
    @chat_room = ChatRoom.find(params[:id])
    if @chat_room.update_attributes(chat_room_allowed_params)
      redirect_to my_chat_rooms_path
    else
      render :edit
    end
  end

  def destroy
    @chat_room.destroy
    redirect_to my_chat_rooms_path(@chat_room), notice: 'The chatroom has been deleted.'
  end

  private

  def set_chat_room
    @chat_room = ChatRoom.find(params[:id])
  end

  def chat_room_allowed_params
    params.require(:chat_room).permit(:title, :description, :photo, chat_room_tags: [:id, :_destroy])
  end
end
