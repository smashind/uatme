source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
# PostgreSQL Database
gem 'pg'
# Use Puma as the app server
gem 'puma'

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'materialize-sass'

# Test Suite
group :test do 
	gem 'capybara'
	gem 'launchy'
	gem 'database_cleaner', github: 'bmabey/database_cleaner'
	gem 'poltergeist'
end

# Development testing
group :development, :test do 
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'byebug'
end

group :development do
  gem 'bullet'
  gem "better_errors"
end

# For heroku (ensures that asset pipeline is correctly used)
group :production, :staging do
	gem 'rails_12factor'
end

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.x'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
