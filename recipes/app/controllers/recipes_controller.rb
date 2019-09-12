class RecipesController < ApplicationController 
  
  get '/recipes' do 
    "A list of recipes!"
  end 
  
  get '/recipes/new' do 
    if !session[:email]
      redirect "/login" 
    else 
      "A new recipe form"
    end 
  end 
  
  get '/recipes/:id/edit' do
    if !session[:email]
      redirect "/login" 
    else 
      "An edit recipe form"
    end 
  end 
  
  
end 