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
    @recipes = Recipe.all
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
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find{params[:id]}
  end

  def update
    @recipe = Recipe.find{params[:id]}
    @recipe.title = params[:title]
    @recipe.chef = params[:chef]
    @recipe.ingredients =  params[:ingredients]
    @recipe.directions = params[:directions]

    @recipe.save
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

end


