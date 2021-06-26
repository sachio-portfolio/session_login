Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs, only: [:index, :new, :create, :show, :update, :destroy]
end
