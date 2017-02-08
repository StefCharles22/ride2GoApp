Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root route
root "welcome#home", as: "home_page"

devise_for :users
resources :users
resources :trips


post "/trips/send-request" => "trips#send_request"









end
