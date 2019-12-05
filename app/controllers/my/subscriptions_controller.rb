class My::SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:show, :destroy, :edit, :update]

  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
  end

  def show
  end

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
    if @subscription.update(subscription_params)
      redirect_to my_subscriptions_path
    else
      render :edit
    end
  end

  def destroy
    @subscription.destroy
    redirect_to my_chat_rooms_path
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  def subscription_params
    params.require(:subscription).permit(:description)
  end
end
