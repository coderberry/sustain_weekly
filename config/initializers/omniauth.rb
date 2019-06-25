Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github,
    Rails.application.credentials.github_key,
    Rails.application.credentials.github_secret,
    scope: "user:email"
end
