Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  resources :items do
    resources :reservations, only: [:new, :create]
  end
  get "reservations/", to: "reservations#index"
  get "myitemindex/", to: "items#itemindex"
  get "careers/", to: "pages#careers"
  get "about/", to: "pages#about"
  get "marco/", to: "pages#marco"
  root to: 'pages#home', as: "homepage"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end




