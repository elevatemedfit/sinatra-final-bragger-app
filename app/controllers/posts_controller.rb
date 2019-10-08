require 'sinatra/base'
require 'rack-flash'


class PostsController < ApplicationController

    get '/posts' do 
        if logged_in?
            @posts = Post.all
            erb :'/posts/index'
        else
            redirect '/login'
        end
    end

    get '/posts/new' do
        if logged_in?
            erb :'/posts/create'
        else 
            redirect '/login'
        end
    end
end