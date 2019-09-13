class UsersController < ApplicationController 
  
  get '/signup' do
    erb :"users/new.html"
  end 
  
  post '/users' do 
    @user = User.new 
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save 
      redirect '/login'
    else 
      erb :"users/new.html"
    end 
      
  end 
  
   get '/users/:slug' do
      @user = User.find_by_slug(params[:slug])

       erb :"/users/show"
    end
  
  
  
end 