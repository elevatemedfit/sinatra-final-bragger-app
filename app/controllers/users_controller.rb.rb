class UsersController < ApplicationController #inherit from AC, any methods in AC will be available across all controllers.
    get '/signup' do
        !logged_in? ? (erb :'/users/signup') : (redirect "/") #if user is logged in goto erb else redirect.
    end

    get '/user/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :'users/account'
    end

    post '/signup' do
        user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
        if user.save
            (session[:user_id] = user.id)# a unique value session id. actually logging user in.
            (redirect "/posts")
        else
            flash[:error] = "Not working! Please try again!"
            redirect "/signup"
        end
    end

    get '/login' do
        user = User.find_by(:username => params[:username])
        !logged_in? ? (erb :'/users/login') : (redirect "/posts")
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