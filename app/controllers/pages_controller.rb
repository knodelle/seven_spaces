class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home] # pas sure de cette commande

  def home
    @chat_rooms = ChatRoom.first
  end

  def search
    @chat_rooms = []
    if params[:search].present?
      Tag.where(id: params[:search][:tag_ids]).each_with_index do |tag, i|
        @chat_rooms = tag.chat_rooms if i == 0
        @chat_rooms = @chat_rooms & tag.chat_rooms
      end
    end
  end
end
