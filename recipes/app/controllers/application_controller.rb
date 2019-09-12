require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "secret"
  end
  
  get '/' do 
    "Hello World"
  end 

  helpers do 
    def logged_in?
      !!session[:email]
    end 
    
    def login(email, password)
      if user = User.find_by(:email => email) && user.authenticate(password)
        session[:email] = user.email 
      else 
        redirect '/login'
      end 
    end 
    
    def logout!
      session.clear
    end 
  end 

end
