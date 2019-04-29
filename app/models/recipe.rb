class Recipe < ApplicationRecord

  has_many :recipeboxes
  belongs_to :mealevent, required: false
  belongs_to :prepevent, required: false 
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

  # validates :name, uniqueness: true

end
