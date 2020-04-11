Rails.application.routes.draw do
  devise_for :users

  # homepage route
  root to: "pages#home"

  # dashboard for account
  get "/dashboard" => "users#index"

  # routes for post methods
  resources :posts, only: [:new, :create, :show]
end
