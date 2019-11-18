Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  resources :tweets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweets#index"
  get "user/:username", to: "tweets#user", as: "user_profile"
  get "users/search", to: "tweets#search", as: "users_search"
end
