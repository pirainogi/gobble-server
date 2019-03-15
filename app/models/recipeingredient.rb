class Recipeingredient < ApplicationRecord

belongs_to :recipe, required: false
belongs_to :ingredient, required: false

end
