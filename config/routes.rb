Rails.application.routes.draw do
  resources :hosts
  resources :accounts
  resources :controllers
  devise_for :users
  root 'pages#index'

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
