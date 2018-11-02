Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  get "users/:id", to: "users#show"
  root to: 'pages#home'
  resources :items do
    resources :reservations, only: [:new, :create]
  end
  get "reservations/", to: "reservations#index"
  get "myitemindex/", to: "items#itemindex"
end



