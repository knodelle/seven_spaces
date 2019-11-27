Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :subscriptions, only: [ :show, :update ]
  resources :chat_rooms, only: :index do
    namespace :my do
      resources :subscriptions, only: [ :new, :create ]
    end
  end
  namespace :my do
    resources :chat_rooms
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

