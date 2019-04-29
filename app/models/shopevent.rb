class Shopevent < ApplicationRecord

  belongs_to :events, required: false
  has_many :recipes

end
