class ApplicationController < ActionController::Base
  before_action :authenticate_user! # compatible avec methode suivante?
  protected # redigiger vers la bonne page

  # def authenticate_user! # pas sure que ça marche
  #   if user_signed_in?
  #     super
  #     redirect_to search_path
  #   else
  #     redirect_to home_path
  #   end
  # end
end
