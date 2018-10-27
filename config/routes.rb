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

  resources :users, only: [:show, :edit, :update] do
    member do
      get :groups
    end
  end

  resources :groups do
    member do
      post :join
    end
  end

  resources :events do
    member do
      post :attend
    end
  end
end
