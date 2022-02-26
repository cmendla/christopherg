source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'jquery-turbolinks'
gem 'rails', '5.2.6'
ruby '2.6.5'

gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
# gem 'coffee-rails', '4.2.2' # TODO: - see if coffeescript can be removed
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails', '4.4.0' # Use jquery as the JavaScript library
gem 'nokogiri', '1.13.2'
gem 'pg', '1.2.3'
gem 'puma', '5.3.2' # Use Puma as the app servber
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'turbolinks', '5.2.1' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'uglifier', '4.2.0' # Use Uglifier as compressor for JavaScript assets

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1.3'
  gem 'rspec-rails', '~> 5.0.1'
  gem 'spring', '~> 2.1.1' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :test do
  gem 'capybara', '~> 3.35.3' # Adds support for Capybara system testing and selenium driver
  gem 'simplecov', require: false
  gem 'selenium-webdriver' # replaces chromedriver-helper??
  gem 'capybara-screenshot'
end  

group :doc do
  gem 'sdoc', '~> 2.0.2' # bundle exec rake doc:rails generates the API under doc/api.
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # gem 'web-console', '~> 2.0'
  # TODO: add webconsole back
  gem 'listen'  # added for rails 5.2
  gem 'rubocop', '~> 0.93.1', :require => false
end
