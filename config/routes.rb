Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :restaurants
  resources :reservations, only: [:index]
  resources :users, only: [:show]
end
