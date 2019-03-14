class Recipe < ApplicationRecord

  belongs_to :recipebox
  belongs_to :mealevent
  belongs_to :prepevent
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

end
