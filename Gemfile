source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Provides the generator settings required for Rails 3+ to use Slim
gem 'slim-rails', '~> 3.1', '>= 3.1.3'
# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.4', '>= 4.4.1'
# Simple, efficient background processing for Ruby.
gem 'sidekiq', '~> 5.1', '>= 5.1.1'
# The administration framework for Ruby on Rails.
gem 'activeadmin', '~> 1.2', '>= 1.2.1'
# Simple, Heroku-friendly Rails app configuration using ENV and a
# single YAML file
gem 'figaro', '~> 1.1', '>= 1.1.1'
# Easy upload management for ActiveRecord
gem 'paperclip', '~> 5.2', '>= 5.2.1'
gem 'imagemagick-identify'
# The most popular HTML, CSS, and JavaScript framework for
# developing responsive, mobile first projects on the web.
gem 'bootstrap', '~> 4.0'

# Ruby library for integrating with the Braintree Gateway
gem 'braintree', '~> 2.83'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  # factory_bot_rails provides integration between factory_bot and rails 3
  # or newer (currently just automatic factory definition loading)
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  # Making tests easy on the fingers and eyes
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Guard is a command line tool to easily handle events on file
  # system modifications.
  gem 'guard', '~> 2.14', '>= 2.14.2', require: false
  # Guard::LiveReload automatically reloads your browser when 'view' files
  # are modified.
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
  # Restart Rails when things change in your app
  gem 'guard-rails', '~> 0.8.1', require: false
  # Insert LiveReload into your app easily as Rack middleware
  gem 'rack-livereload', '~> 0.3.16'
  # When mail is sent from your application, Letter Opener will open a
  # preview in the browser instead of sending.
  # gem 'letter_opener', '~> 1.6'
  # Monitors Ruby apps and reports detailed metrics on performance to Scout.
  gem 'scout_apm', '~> 2.4', '>= 2.4.8'
  # Capistrano is a utility and framework for executing commands in parallel
  # on multiple remote machines, via SSH.
  # gem 'capistrano', '~> 3.10', '>= 3.10.1'
  # RVM integration for Capistrano
  # gem 'capistrano-rvm', '~> 0.1.2'
  # Bundler support for Capistrano 3.x
  # gem 'capistrano-bundler', '~> 1.3'
  # Rails specific Capistrano tasks
  # gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  # Puma integration for Capistrano 3
  # gem 'capistrano3-puma', '~> 3.1', '>= 3.1.1'
  # Speeds up asset compilation by skipping the assets:precompile task if
  # none of the assets were changed since last release.
  # gem 'capistrano-faster-assets', '~> 1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
