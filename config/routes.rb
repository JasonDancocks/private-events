Rails.application.routes.draw do
 	root "home#home"
  resources :users
  resources :sessions, only: [:new, :create]
  resources :events, only: [:new, :create, :index, :show]
end
