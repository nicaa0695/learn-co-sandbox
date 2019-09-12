class RecipesController < ApplicationController 
  
  get '/recipes' do 
    "A list of recipes!"
  end 
  
  get '/recipes/new' do 
    if session[:email].empty?
      redirect "/login" 
    else 
      "A new recipe form"
    end 
  end 
  
  
end 