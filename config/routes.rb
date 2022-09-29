Rails.application.routes.draw do
  get 'users/show'
  resources :articles, only: [:index, :show]

  # implied controller with session#create - route will always lead to a controller next
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
end
