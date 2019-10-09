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

    post '/posts' do
        if params.empty?
            flash[:error] = "All fields must be filled in"
            redirect '/posts/new'
        elsif logged_in? && !params.empty?
            @post = current_user.posts.create(name: params[:name], content: params[:content], image_url: params[:image_url], step_count: params[:step_count], cardio_score: params[:cardio_score], caloric_burn: params[:caloric_burn], walking_distance: params[:walking_distance])
            if @post.save
                redirect "/posts/#{@post.id}"
            else
                flash[:error] = "Your post could not be saved. Try again!"
                redirect '/posts/new'
            end
        else 
            flash[:error] = "You must be logged in to see the post index."
            redirect '/login'
        end
        current_user.save
    end

    get '/posts/:id' do
        if logged_in?
            @post = Post.find_by_id(params[:id])
            erb :'/posts/show'
        else 
            flash[:error] = "You must be logged in to view posts."
            redirect '/login'
        end
    end

    get '/posts/:id/edit' do 
        @post = Post.find_by_id(params[:id])
        if logged_in? && current_user.posts.include?(@post)
            erb :'/posts/edit'
        else 
            flash[:error] = "You must be logged in to edit a post."
            redirect '/login'
        end
    end

    patch '/posts/:id' do
        @post = Post.find_by_id(params[:id])
        if params.empty?
            flash[:error] = "All fields must be filled in"
            redirect "/posts/#{@post.id}/edit"
        elsif logged_in? && !params.empty? && current_user.posts.include?(@post)
            @post.update(content: params[:content], step_count: params[:step_count], cardio_score: params[:cardio_score], caloric_burn: params[:caloric_burn], walking_distance: params[:walking_distance], image_url: "google.com")
            @post.save
            redirect "/posts/#{@post.id}"
        else 
            flash[:error] = "You must be logged in."
            redirect '/login'
        end
    end

    delete '/posts/:id/delete' do
        if logged_in?
            @post = Post.find_by_id(params[:id])
            if @post.user == current_user then @post.delete else redirect '/login' end
        else 
            flash[:error] = "You must be logged in."
            redirect '/login'
        end
        redirect '/posts'
    end

end