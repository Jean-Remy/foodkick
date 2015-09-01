Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }, :path_prefix => 'my'
  root to: 'pages#home'
  resources :restaurants
  resources :reservations, only: [:index]
end
