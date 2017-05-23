Rails.application.routes.draw do
  resources :themes
  get 'pages/home'
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :rooms
  resources :events

  resources :profiles, only: [:new, :edit, :create, :update]
  
end
