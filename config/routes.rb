Rails.application.routes.draw do
  root 'application#hello'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:index, :show, :create, :new, :destroy]

  get '/login', to: 'sessions#new'
end
