Rails.application.routes.draw do
  root to: "static_pages#home"
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }

  resources :users, only: [:show, :edit]
  resources :groups
  resources :events
end
