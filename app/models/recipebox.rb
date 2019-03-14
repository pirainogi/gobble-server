class Recipebox < ApplicationRecord

  belongs_to :user
  has_many :recipes
  has_many :recipeingredients, through: :recipes 

end
