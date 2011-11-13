source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'css-bootstrap-rails'
gem 'jquery-rails'
gem 'json'
gem "russian" 
gem 'client_side_validations'
gem "meta_search"
gem "comma", :git => "git://github.com/crafterm/comma.git" 

group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :production do
  gem 'pg'
end

group :development do
	gem 'sqlite3'
end

group :test do
	gem 'database_cleaner'
	gem 'factory_girl_rails'
	gem 'spork', '>=0.9.0.rc2'
end
gem 'rspec-rails', :group => [:development, :test]
