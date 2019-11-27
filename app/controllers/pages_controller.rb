class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home] # pas sûre de cette commande

  def home
  end

  def search
    # redirect_to my_chat_rooms_path unless current_user.chat_rooms.empty?
    # db tag chercher celui qui correspond chat_rooms_tag.where(tag.name == query)
  end
end
