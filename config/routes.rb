Rails.application.routes.draw do
  root to: "messages#index"

  resources :messages, only: [:index, :create]
  resources :user, only: [:edit, :update]

  devise_for :users
end
