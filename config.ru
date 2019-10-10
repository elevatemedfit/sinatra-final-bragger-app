require './config/environment' #config lets us to build on top of rack. Will mount other controllers.
require 'rack-flash'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #allows us to send delete and patch requests.
use UsersController
use PostsController
use SessionsController
use Rack::Flash
run ApplicationController
