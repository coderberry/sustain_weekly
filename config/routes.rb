Rails.application.routes.draw do
  get "/auth/github/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout
  root to: "home#index"
end
