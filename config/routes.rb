Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :actions, only: [:new, :create, :edit, :update]
  resources :patients, only: [:new, :create, :index, :edit, :update, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
