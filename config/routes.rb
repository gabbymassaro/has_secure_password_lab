Rails.application.routes.draw do
  root 'application#hello'
  resources :users, only: [:new, :create]
end
