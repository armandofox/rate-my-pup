source 'https://rubygems.org'

ruby '2.2.2'

if RUBY_VERSION =~ /2.2/ # default encoding for db:seed
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

gem 'rails', '3.2.16'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'haml'
gem 'rake'
gem 'jasmine'
gem 'devise'
gem 'figaro'
gem "font-awesome-rails"
gem 'geocoder'
gem 'activeadmin'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', '5.0.0'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails', '~> 2.14.0'
  gem 'simplecov'
  gem 'factory_girl'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'codeclimate-test-reporter'
	gem 'reek'
	gem 'poltergeist'
	gem 'test-unit', '~> 3.0'
	gem 'phantomjs', :require => 'phantomjs/poltergeist'
end

group :production do
  gem 'pg'
end

group :assets do
  gem 'uglifier'
  gem 'therubyracer'
  gem 'sass-rails'
  gem 'coffee-rails'
end

gem 'omniauth-facebook', :github => 'mkdynamic/omniauth-facebook'
gem 'omniauth-twitter', :github => 'arunagw/omniauth-twitter'
