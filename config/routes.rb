Rails.application.routes.draw do
  namespace :api do
    get "/users/me" => "users#profile"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
    
    
    post "/user_sessions" => "sessions#user_create"
  end
end
