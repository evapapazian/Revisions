class Admin::RecipesController < ApplicationController
before_action :authenticate_user!, :require_admin

   # Methods verification Admin

   def require_admin
     unless current_user.is_admin
       redirect_to root_path
     end
   end
 
	 def index
			@recipes = Recipe.all
		end

	def create 
			@recipe = Recipe.new(title: params[:title], description: params[:description], ingredients: params[:ingredients])
	        	if @recipe.save
	        		redirect_to admin_recipes_path

	    		else render :new

	   		    end

	end 

	def destroy
			@recipe = Recipe.find(params[:id])
			if @recipe.delete
				redirect_to admin_recipes_path
				flash[:success] = "Recette supprimée"

			else render :index
			end
		end 
end
