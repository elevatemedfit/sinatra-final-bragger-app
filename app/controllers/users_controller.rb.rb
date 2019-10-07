class UsersController < ApplicationController #inherit from AC, any methods in AC will be available across all controllers.
    get '/login' do #this route's purpose is to render login form.
        erb :login
    end

    get '/signup' do
    end
end