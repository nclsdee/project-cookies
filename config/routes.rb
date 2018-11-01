Rails.application.routes.draw do
  get 'items/index'
  get "users/:id", to: "users#show"
  devise_for :users
  root to: 'pages#home'
  resources :items
end



