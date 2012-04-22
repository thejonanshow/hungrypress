source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'jquery-rails'
gem 'devise'
gem 'cancan'
gem 'gravatar_image_tag'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'guard'
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'heroku'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
  gem 'cane'
  gem 'simplecov'
  gem 'tailor', '0.1.5'
  gem 'ripper_ruby_parser'
  gem 'reek', :git => 'git://github.com/mvz/reek.git',
      :branch => 'ripper_ruby_parser-2'
end

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.0.2'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'slim'
end

