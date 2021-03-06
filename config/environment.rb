ENV['SINATRA_ENV'] ||= "development"  #database folder with empty migrations folder.

require 'bundler/setup'
require 'rack-flash'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require './app/controllers/application_controller'
require_all 'app'
