Rails.application.routes.draw do
  devise_for :users
  get '/search', to: 'pages#search'

  # search by tags
  # get 'search/:tag', to: 'static#home', as: "search"

  root to: 'pages#home', as: "home"

  resources :subscriptions, only: [ :show, :update ]
  resources :chat_room_tags, only: [ :new, :create ] # ??
 
  resources :chat_rooms, only: :index do
    resources :subscriptions, only: :index
    namespace :my do
      resources :subscriptions, only: [ :new, :create ]
    end
  end
  
  namespace :my do
    resources :chat_rooms
    resources :subscriptions, only: [:destroy, :show, :edit, :update, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

