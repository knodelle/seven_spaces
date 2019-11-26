Rails.application.routes.draw do
  devise_for :users
  get '/search', to: 'pages#search'
  root to: 'pages#home', as: "home"


  resources :subscriptions, only: [ :show, :update ]
  resources :chat_rooms, only: :index
  namespace :my do
    resources :chat_rooms
    resources :subscriptions, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

