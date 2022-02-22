Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :creatures do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:destroy, :show]
  patch 'reservations/:id', to: 'reservations#accept'
  patch 'reservations/:id', to: 'reservations#decline'
end
