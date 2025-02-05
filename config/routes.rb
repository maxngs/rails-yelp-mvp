Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # User can list all the restaurants
  get "restaurants", to: "restaurants#index"
  # User can add a new restaurant and redirect to the show view
  get "restaurants/new", to: "restaurants#new"

  post "restaurants", to: "restaurants#create"

  # User can see the details of a restaurant
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # User can let a review
 

end
