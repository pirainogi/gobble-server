class Pantry < ApplicationRecord

  belongs_to :user, required: false
  has_many :ingredients

end
