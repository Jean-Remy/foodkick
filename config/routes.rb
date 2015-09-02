Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get '/codes', to: 'users#codes', as: :codes
  resources :restaurants do
    resources :reservations
    resources :feedbacks

  end
  get '/validate', to: "reservations#validate", as: :validate
  post '/validate', to: "reservations#validate_code", as: :validate_code
end
