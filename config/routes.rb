Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/login', to: 'pages#login'
  resources :labours, only: [:new, :create, :edit, :update]
  resources :patients, only: [:new, :create, :index, :edit, :update, :show]
  resources :babies, only: [:new, :create, :index, :show]
  resources :actions_codes, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
