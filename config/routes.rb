Rails.application.routes.draw do

  root to: 'pages#home'
  get '/cords', to: 'pages#cords'
  get '/home', to: 'pages#home'

  resources :urbanos do
    resources :urban_neighbors, only: [:new, :create]
    resources :urban_owners, only: [:new, :create]

    member do
      get 'report'
    end
  end

  resources :especials do
    resources :special_neighbors, only: [:new, :create]
    resources :special_owners, only: [:new, :create]

    member do
      get 'report'
    end
  end

  resources :rurals do
    resources :owners, only: [ :new, :create ]
    resources :neighbors, only: [:new, :create]

    member do
      get 'report'
    end
  end

  resources :neighbors, only: [ :show, :edit, :update, :destroy ]

  resources :owners, only: [ :show, :edit, :update, :destroy ]

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :users do
    member do
      post :enable_multi_factor_authentication, to: 'users/multi_factor_authentication#verify_enable'
      post :disable_multi_factor_authentication, to: 'users/multi_factor_authentication#verify_disabled'
    end
  end



end
