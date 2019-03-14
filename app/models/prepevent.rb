class Prepevent < ApplicationRecord

  belongs_to :event
  has_many :recipes

end
