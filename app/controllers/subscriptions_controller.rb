class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :update]

  def index
    @chat_room = ChatRoom.find(params[:chat_room_id])
    sql_query = "chat_room_id = ? AND status = 'pending' AND user_id != ?"
    @subscriptions = Subscription.where(sql_query, @chat_room, current_user.id)
  end

  def show
  end

  def update
    if @subscription.update(subscription_params)
      redirect_to chat_room_subscriptions_path(@subscription)
    else
      render :show
    end
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def subscription_params
    params.require(:subscription).permit(:status)
  end
end
