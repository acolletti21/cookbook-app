# class RecipesController < ApplicationController
   # def one_recipe
   #   @recipe = Recipe.first
   # end

#   def all_recipes
#     @recipes = Recipe.all
#   end

#   def recipe_form

#   end

#   def recipe_success
#     @recipe = Recipe.new(
#                         title: params["title"],
#                         chef: params["chef"],
#                         ingredients: params["ingredients"],
#                         directions: params["directions"]
#                           )
#     @recipe.save
#   end
# end
#round1^


class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all.order(:id)
  end

  def new
  end

  def create
    @recipe = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    @recipe.save
    flash[:success] = "Recipe Created Successfully."
    redirect_to "/recipes/#{@recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.assign_attributes(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    @recipe.save
    flash[:success] = "Recipe Updated"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:warning] = "Recipe #{@recipe.title} Destroyed"
    redirect_to "/recipes"
  end

end


