source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'coffee-rails', '~> 4.2'
gem 'faraday'
gem 'grape'
gem 'rails', '~> 5.1.0'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'method_source'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13.0'
  gem 'grape_on_rails_routes'
  gem 'grape-swagger'
  gem 'grape-swagger-rails'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'rubocop'
  gem 'selenium-webdriver'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'json_expressions'
  gem 'rspec-parameterized'
  gem 'rspec-rails'
  gem 'rspec-sidekiq'
  gem 'spring-commands-rspec'
  gem 'test-queue'
  gem 'timecop'
  gem 'vcr'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
