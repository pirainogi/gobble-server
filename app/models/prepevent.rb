class Prepevent < ApplicationRecord

  belongs_to :event, required: false
  has_many :recipes

end
