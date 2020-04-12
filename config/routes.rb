Rails.application.routes.draw do
  devise_for :users

  # homepage route
  root to: "posts#index"

  # dashboard for account
  get "/dashboard" => "users#index"

  # routes for post methods
  resources :posts, only: [:index, :new, :create, :show]
end
