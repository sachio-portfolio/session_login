Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  root to: 'blogs#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show]
  resources :blogs do
    resources :comments
  end
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
end
