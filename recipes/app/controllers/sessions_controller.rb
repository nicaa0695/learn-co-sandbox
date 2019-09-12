class SessionsController < ApplicationController 
  
  get '/login' do 
    erb :"sessions/login.html"
  end 
  
  post '/sessions' do 
    login(params[:email])
    # session[:email] = params[:email]
    redirect '/recipes'
  end 
  
  get '/logout' do
    logout!
    redirect '/recipes'
  end 
  
end 
