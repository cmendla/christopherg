source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


gem 'jquery-turbolinks'
gem 'rails', '5.2'
ruby '2.6.5'

gem 'bootsnap', '>= 1.1.0', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails', '4.4.0' # Use jquery as the JavaScript library
gem 'nokogiri', '1.10.10'
gem 'pg', '0.18'
gem 'puma', '5.0.2' # Use Puma as the app servber
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'turbolinks', '5.2.1' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'uglifier', '4.2.0' # Use Uglifier as compressor for JavaScript assets

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1.3'
  gem 'rspec-rails', '~> 4.0.1'
end

group :test do
  gem 'capybara', '~> 3.33.0', '< 4.0'
  gem 'capybara-screenshot'
  gem 'chromedriver-helper' # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end  

group :doc do
  gem 'sdoc', '~> 0.4.0' # bundle exec rake doc:rails generates the API under doc/api.
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'
  # TODO: add webconsole back
  gem 'listen'

  gem 'rubocop', '~> 0.93.1', :require => false
  gem 'spring', '~> 2.1.1' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end
