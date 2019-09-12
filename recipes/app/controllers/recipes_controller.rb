class RecipesController < ApplicationController 
  
  get '/recipes' do 
    "A list of recipes!"
  end 
  
  get '/recipes/new' do 
    if !logged_in?
      redirect "/login" 
    else 
      "A new recipe form"
    end 
  end 
  
  get '/recipes/:id/edit' do
    if !logged_in?
      redirect "/login" 
    else 
      recipe = Recipe.find(params[:id])
      
      "An edit recipe form #{current_user.id} is editing #{recipe.id}"
    end 
  end 
  
  
  
  
end 