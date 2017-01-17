class RecipesController < ApplicationController
  def one_recipe
    @recipe = Recipe.first
  end
end
