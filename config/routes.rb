Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [] do
    collection do
      patch "profile", to: "users#update_profile", as: :profile
      get :profile, to: "users#profile"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show ] do
    resources :favourites, only: [:create]
    resources :reviews, only: [ :index, :create ]
  end
end
