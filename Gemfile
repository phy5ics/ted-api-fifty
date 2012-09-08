source :rubygems

gem 'rake'
gem 'sinatra'
gem 'unicorn'
gem 'faraday'
gem 'haml'
gem 'sass'
gem 'mongoid'
gem 'sinatra-flash'

group :development do
  gem 'sinatra-reloader'
end

group :test do
  gem 'cucumber-sinatra'
  gem 'launchy'
  gem 'rspec'
  gem 'faker'
  gem 'machinist'
  gem 'machinist_mongo',
    :require  => 'machinist/mongoid', 
    :git      => 'git://github.com/nmerouze/machinist_mongo.git',
    :branch   => 'machinist2'
  gem 'capybara'
end