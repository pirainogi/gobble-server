class Ingredient < ApplicationRecord

  belongs_to :recipeingredient
  belongs_to :pantry
  belongs_to :shopevent

end
