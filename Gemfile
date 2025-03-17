source "https://rubygems.org"

ruby file: ".ruby-version"

gem "good_migrations"
gem "vite_rails", "~> 3.0"
gem "rails", github: "rails/rails", branch: "8-0-stable"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "factory_bot_rails"
  gem "dotenv", ">= 3.0"
  gem "rspec-rails"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "letter_opener"
  gem "erb_lint", require: false
  gem "bundler-audit", require: false
  gem "annotaterb"
  gem "web-console"
end

group :test do
  gem "capybara-lockstep", require: false
  gem "selenium-webdriver", require: false
  gem "capybara", require: false
end
