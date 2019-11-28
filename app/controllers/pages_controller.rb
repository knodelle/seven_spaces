class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home] # pas sure de cette commande

  def home
    @chat_rooms = ChatRoom.first
  end

  def search

    if params[:query].present?
      @chat_rooms = ChatRoom.joins(:tags).where(name: params[:query])
    else
      @chat_rooms = ChatRoom.all
    end

    # redirect_to my_chat_rooms_path unless curent_user.chat_rooms.empty?
    # db tag chercher celui qui correspond chat_rooms_tag.where(tag.name == query)
  end


end
