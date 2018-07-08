Rails.application.routes.draw do
  devise_for :users
  root to: "static_pages#home"

  resources :events, only: [:index, :show]
  resources :users, only: [:show, :edit]
end
