Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/login', to: 'pages#login'
  resources :labours, only: [:new, :create, :edit, :update] do
    resources :babies, only: [:new, :create, :index, :show]
    resources :labour_codes, only: [:new, :create]
  end
  resources :patients, only: [:new, :create, :index, :edit, :update, :show]
  resources :labour_codes, only: [:new, :create]
end
