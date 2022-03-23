Rails.application.routes.draw do
  resources :recipes
  resources :users
  
  get "/me", to: "users#show"
  get "/recipes", to: "recipes#index"
  
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "/recipes", to: "recipes#create"

  delete "/logout", to: "sessions#destroy"
end
