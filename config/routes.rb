Rails.application.routes.draw do
  get "/auth/github/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout

  resources :posts, path: "p"

  match "/webhooks/mailchimp", to: "mailchimp#create", via: [:get, :post]

  root to: "posts#index"
end
