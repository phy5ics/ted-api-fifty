require 'sinatra/base'

$stdout.sync = true

require './app'
run Fifty::App