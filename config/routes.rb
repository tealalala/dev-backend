Rails.application.routes.draw do
  namespace :api do
    # Posts
    resources :posts

    # Post Tags
    resources :post_tags, :only => [:index, :create]

    # Post User Votes
    resources :post_user_votes, :only => [:index, :create]

    # Tags
    resources :tags, :only => [:index, :show, :create]

    # Users
    get "/users/me" => "users#profile"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    # Sessions
    post "/sessions" => "sessions#create"
  end
end
