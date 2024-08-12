Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users
  resources :messages
  resources :rooms

end
