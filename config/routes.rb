Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show ] do
    resources :favourites, only: [:create]
    resources :reviews, only: [ :index, :create ]
  end
end
