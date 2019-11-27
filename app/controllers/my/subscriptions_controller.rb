class My::SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
    @chat_room = ChatRoom.find(params[:chat_room_id])
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @chat_room = ChatRoom.find(params[:chat_room_id].to_i)
    @subscription.user_id = current_user.id
    @subscription.chat_room = @chat_room
    @subscription.status = 'pending'
    if @subscription.save
      redirect_to my_chat_rooms_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to my_chat_rooms_path
  end

  private

  # def set_subscription
  # end

  def subscription_params
    params.require(:subscription).permit(:description)
  end
end
