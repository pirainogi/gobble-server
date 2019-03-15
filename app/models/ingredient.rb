class Ingredient < ApplicationRecord

  has_many :recipeingredients
  belongs_to :pantry, required: false
  belongs_to :shopevent, required: false

  validates :name, uniqueness: true

end
