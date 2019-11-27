class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :update]

  def index
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @subscriptions = Subscription.where(chat_room_id: @chat_room)
  end

  def show
  end

  def update
    if @subscription.update(subscription_params)
      redirect_to subscription_path(@subscription)
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
