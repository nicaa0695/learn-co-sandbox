class RecipesController < ApplicationController 
  
  get '/recipes' do 
     if !logged_in?
      redirect to "/login"
    else
      @user = User.find_by(session[:user_id])
    erb :'/recipes/index'
  end
  end
   
  
  get '/recipes/new' do 
    if !logged_in?
      redirect "/login" 
    else 
      "A new recipe form"
      erb :'/recipes/new.html'
    end 
  end 
  
  get '/recipes/:id/edit' do
    if !logged_in?
      redirect "/login" 
    else 
       if recipe = current_user.recipes.find_by(params[:id])
      "An edit recipe form #{current_user.id} is editing #{recipe.id}"
    else 
      redirect '/recipes'
    end 
    end 
  end 
  
  
end 