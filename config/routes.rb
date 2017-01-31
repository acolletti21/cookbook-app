# Rails.application.routes.draw do
#   get '/one_recipe_url' => 'recipes#one_recipe'
#   get '/all_recipes_url' => 'recipes#all_recipes'

#   get '/recipe_form' => 'recipes#recipe_form'
#   post '/recipe_success' => 'recipes#recipe_success'
# end
#round 1^

Rails.application.routes.draw do
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'
  post '/recipes' => "recipes#create"

  get '/recipes/:id' => 'recipes#show'

  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
end

