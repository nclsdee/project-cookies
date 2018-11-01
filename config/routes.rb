Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  get "users/:id", to: "users#show"
  root to: 'pages#home'
  resources :items
end



