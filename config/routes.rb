Rails.application.routes.draw do
  resources :hosts
  resources :accounts
  devise_for :users
  root 'pages#index'

  get 'projects/search/:lat/:long/:radius' => "projects#search"

  resources :projects

  scope :auth do
  	get 'is_signed_in', to: 'auth#is_signed_in?'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end