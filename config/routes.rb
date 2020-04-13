Rails.application.routes.draw do
  devise_for :users

  # homepage route to list of all posts
  root to: "posts#index"

  # directs to profile of a user
  get "profile/:username" => "users#profile", as: :profile

  # directs route to our likes controller and the save_likes method - json response
  get "post/like/:post_id" => "likes#save_likes", as: :like_post

  # routes for limited post methods
  resources :posts, only: [:index, :new, :create, :show]
end
