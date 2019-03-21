class Recipe < ApplicationRecord

  has_many :recipeboxes
  belongs_to :mealevent
  belongs_to :prepevent
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

  validates :name, uniqueness: true

end
