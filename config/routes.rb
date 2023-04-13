Rails.application.routes.draw do

  root 'pages#home'
  resources :posts
  resources :users, except: [:new]
  resources :comments, only: %i[new create destroy]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
