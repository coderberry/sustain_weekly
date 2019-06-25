source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.0.rc1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sendgrid-ruby'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
  gem "faker"
  gem "pry"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rb-readline"
end

group :development do
  gem "annotate"
  gem "letter_opener_web"
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem "mechanize"
  gem "meta_request" # RailsPanel Chrome extension
  gem "model_probe"
  gem "rails-erd"
  gem "standard"
  gem "teamocil"
  gem "tocer"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem 'capybara', '>= 2.15'
  gem "minitest-reporters", require: "minitest/reporters"
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem "webmock"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
