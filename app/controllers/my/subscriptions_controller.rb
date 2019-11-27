class My::SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @chat_room = ChatRoom.find(params[:chat_room_id].to_i)
    @subscription.chat_room = @chat_room
    @subscription.status = 'pending'
    if @subscription.save
      redirect_to home_path
    else
      render :new
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:description, user: current_user)
  end
end
