class User < ApplicationRecord

  has_many :recipeboxes
  has_many :recipes, through: :recipeboxes
  has_many :events
  has_many :shopevents, through: :events
  has_many :mealevents, through: :events
  has_many :prepevents, through: :events
  has_one :pantry

  validates :username, uniqueness: true
  has_secure_password

end
