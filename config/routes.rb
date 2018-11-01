Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  root to: 'pages#home'
  resources :items
end



