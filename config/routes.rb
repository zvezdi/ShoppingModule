Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  get 'register', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
