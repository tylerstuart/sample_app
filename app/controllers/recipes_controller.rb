class RecipesController < ApplicationController
  
   def show
   	@recipe = Recipe.find(params[:id])
   end

  def new
  	@recipe = Recipe.new
  end

  def create 
  	@recipe = Recipe.new(params[:recipe])
  	if @recipe.save
  		flash[:success] = "Thank you for the new recipe!"
  		redirect_to @recipe
  	else
  		render 'new'
  	end
  end
end
