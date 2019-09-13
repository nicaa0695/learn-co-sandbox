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
  
   post '/recipes' do
    if params[:content] != ""
      @current_user = User.find(session[:email])
      @current_user.recipes << Recipe.create(content: params[:content])

       redirect "/recipes"
    else
      redirect "/recipes/new"
    end
  end
  
  # get '/recipes/:id/edit' do
  #   if !logged_in?
  #     redirect "/login" 
  #   else 
  #     if recipe = current_user.recipes.find_by(params[:id])
  #       erb :'recipes/edit'
  #     # "An edit recipe form. #{current_user.id} is editing #{recipe.id}"
  #   else 
  #     redirect '/recipes'
  #   end 
  #   end 
  # end 
  
  get '/recipes/:id' do
    if !logged_in?
      redirect to "/login"
    else
    @recipe = Recipe.find(params[:id])

     erb :"/recipes/index"
    end
  end
  
   get '/recipes/:id/edit' do
    if !logged_in?
      redirect to "/login"
    else
      @recipe = Recipe.find(params[:id])

       erb :"/recipes/edit"
    end
  end
  
  patch '/recipes/:id' do
    recipe = Recipe.find(params[:id])
    if params[:content] != ""
      recipe.update(content: params[:content])

       redirect "/recipes/#{recipe.id}"
    else
      redirect "/recipes/#{recipe.id}/edit"
    end
  end
  
  
end 