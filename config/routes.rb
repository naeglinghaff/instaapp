Rails.application.routes.draw do
  devise_for :users, :posts
  root to: "pages#home"

  # dashboard for account
  get "/dashboard" => "users#index"
end
