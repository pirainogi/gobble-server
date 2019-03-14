class Event < ApplicationRecord

  belongs_to :user
  has_many :mealevents
  has_one :recipe, through: :mealevents
  has_many :prepevents
  has_many :recipes, through: :prepevents
  has_many :shopevents
  has_many :ingredients, through: :shopevents

end
