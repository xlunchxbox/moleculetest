source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'simplecov'
# Add Foundation Here
#gem 'compass-rails' # you need this or you get an err
gem 'zurb-foundation', '~> 4.0.0'

gem "will_paginate", "~> 3.0.4"

#This gem will be used for the database on heroku
group :production do
  gem 'pg'
end

#During development, this gem for the database will be used
group :development do
  gem 'sqlite3'
  gem 'annotate'
  gem 'rspec-rails'
end

group :test do
  gem 'rspec'
  gem 'guard-rspec'
  gem 'simplecov'
end
