Rails.application.routes.draw do
  namespace :api do
    # Posts
    resources :posts

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
