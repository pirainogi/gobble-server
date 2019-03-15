class Recipe < ApplicationRecord

  belongs_to :recipebox, required: false
  belongs_to :mealevent, required: false
  belongs_to :prepevent, required: false
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients

  validates :name, uniqueness: true

end
