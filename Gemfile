# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# State machine support [https://github.com/aasm/aasm]
gem 'aasm'
# Use activeRecord callbacks otuside of models [https://github.com/Envek/after_commit_everywhere]
gem 'after_commit_everywhere'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'
# Date validations [https://github.com/codegram/date_validator]
gem 'date_validator'
# Group by days/weeks/etc [https://github.com/ankane/groupdate]
gem 'groupdate'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'
# Pagination [https://github.com/ddnexus/pagy]
gem 'pagy'
# Use postgresql as the database for Active Record
gem 'pg'
# User friendly prefixed IDs [https://github.com/excid3/prefixed_ids]
gem 'prefixed_ids'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma'
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails'
# Redis integration [https://github.com/redis/redis-rb]
gem 'redis'
# Simplified form DSL [https://github.com/heartcombo/simple_form]
gem 'simple_form'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # Environment variables [https://github.com/bkeepers/dotenv]
  gem 'dotenv-rails'
  # Mock ActiveRecord factories [https://github.com/thoughtbot/factory_bot_rails]
  gem 'factory_bot_rails'
  # Fake data generators [https://github.com/faker-ruby/faker]
  gem 'faker'
  # Debugging [https://github.com/pry/pry]
  gem 'pry'
end

group :development do
  # Preview emails locally [https://github.com/fgrehm/letter_opener_web]
  gem 'letter_opener_web'
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end

group :test do
  # TDD framework [https://github.com/rspec/rspec-rails]
  gem 'rspec-rails'
  # Simple validation matchers [https://github.com/thoughtbot/shoulda-matchers]
  gem 'shoulda-matchers'
  # Code coverage [https://github.com/simplecov-ruby/simplecov]
  gem 'simplecov'
end
