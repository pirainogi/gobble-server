class Shopevent < ApplicationRecord

  belongs_to :events
  has_many :recipes 

end
