Rails.application.routes.draw do
#  get 'messages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "rooms#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end 
end
