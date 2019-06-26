Rails.application.routes.draw do
  get "/auth/github/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: :logout

  match "/webhooks/mailchimp", to: "mailchimp#create", via: [:get, :post]

  root to: "home#index"
end
