Rails.application.routes.draw do
  get '/one_recipe_url' => 'recipes#one_recipe'
  get '/all_recipes_url' => 'recipes#all_recipes'

  get '/recipe_form' => 'recipes#recipe_form'
  post '/recipe_success' => 'recipes#recipe_success'
end
