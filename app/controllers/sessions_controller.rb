class SessionsController < ApplicationController

    get '/login' do
        user = User.find_by(:username => params[:username])
        !logged_in? ? (erb :'/sessions/login') : (redirect "/posts")
    end

    post '/login' do 
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect "/posts"
        else
            flash[:error] =  "Incorrect username or password! Please try again!"
            redirect "/login"
        end
    end

    get '/logout' do
        if logged_in?
            session.destroy
            redirect '/login'
        else
            flash[:error] = "Please try again!"
            redirect '/'
        end 
    end
end