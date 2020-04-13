Rails.application.routes.draw do
  devise_for :users

  # homepage route
  root to: "posts#index"

  get "profile/:username" => "users#profile", as: :profile

  # routes for post methods
  resources :posts, only: [:index, :new, :create, :show]
end
