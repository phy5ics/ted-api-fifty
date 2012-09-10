require 'rubygems'
require 'sinatra'
require 'sinatra/flash'
require "sinatra/reloader" if development?
require 'haml'
require 'sass'
require 'mongoid'
require 'ted_api'

set :environment, ENV['RACK_ENV']

configure do
	Mongoid.configure do |config|
		Mongoid.load!('config/mongoid.yml')
		Mongoid.logger = nil
	end
end

module Fifty
  class App < Sinatra::Base
   
    get '/' do
      @client = TedApi::Client.new(api_key: ENV['TED_API_KEY'])
      puts @client.talks
      haml :index
    end
  
  end
end
