source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use postgresql as the database for Active Record
gem 'pg'
gem 'figaro', github: 'laserlemon/figaro'#, branch: 'rails4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'haml-rails'
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# State machine
gem 'state_machine'

## Authentication (OmniAuth)
gem 'omniauth', github: 'intridea/omniauth'
#gem 'omniauth-twitter'
#gem 'omniauth-facebook'
gem 'omniauth-github', github: 'intridea/omniauth-github'
#gem 'omniauth-linkedin'
#gem 'omniauth-google-oauth2'

# Integrations
gem 'github_api', github: 'peter-murach/github'

# Angular
gem 'angularjs-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test, :developent do
  gem 'sqlite3'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'email_spec'
  gem "mocha", require: false
  gem 'response_code_matchers'
  gem 'rspec-rails-mocha', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
