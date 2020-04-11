Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # dashboard for account
  get "/dashboard" => "users#index"
end
