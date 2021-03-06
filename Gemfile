source 'https://rubygems.org'
ruby '2.5.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sassc'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'bootstrap', ">= 4.3.1"
gem 'bootstrap4-datetime-picker-rails'
gem 'jquery-rails'
gem 'omniauth'
gem 'simple_form'
gem 'kaminari'
gem "font-awesome-rails"
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'file_validators'
gem 'mini_racer' # Fixes 'Autoprefixer doesn’t support Node' issue

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'guard-rspec', require: false
  gem 'spring-commands-rspec'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker'
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
