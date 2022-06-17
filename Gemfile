source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bcrypt'
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3'
gem 'rake'
gem 'rubycritic'
gem 'rubycritic-small-badge', require: false
gem 'sandi_meter'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.19'
  gem 'pry-byebug', '~> 3.9'
  gem 'rspec-json_expectations', '~> 2.2'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
end

group :development do
  gem 'rails_best_practices', '~> 1.21'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', '~> 2.12', '>= 2.12.4', require: false
  gem 'rubocop-rspec', require: false
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data'