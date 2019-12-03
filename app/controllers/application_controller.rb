class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  protected

  # def authenticate_user
  #   if user_signed_in?
  #     super
  #     redirect_to search_path
  #   else
  #     :authenticate_user
  #   end
  # end
end
