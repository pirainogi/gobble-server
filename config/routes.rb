Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :new, :create, :edit, :update]
      resources :recipeboxes, only: [:index, :show, :new, :create, :edit, :update]
      resources :recipes, only: [:index, :show]
      resources :recipeingredients, only: [:index, :show]
      resources :ingredients, only: [:index, :show]
      resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :mealevents, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :prepevents, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :shopevents, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :pantries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    end
  end

end
