source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'
# gem 'pg', '(>= 0)'
group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails', '1.0'
end

gem 'json'

gem "heroku", "~> 2.14.0"	

gem "friendly_id", "~> 3.0"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'


# To use debugger
#gem 'ruby-debug'
#gem 'ruby-debug' ,:platform => :ruby_18 
#gem 'ruby-debug19',:platform => :ruby_19

gem "passenger", "~> 3.0.11"
gem "capistrano", "~> 2.9.0"