class Mealevent < ApplicationRecord

  belongs_to :event
  has_one :recipe

end
