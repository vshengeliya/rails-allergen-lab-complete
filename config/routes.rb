Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  get '/search', to: 'recipes#index'
end