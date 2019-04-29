class Mealevent < ApplicationRecord

  belongs_to :event, required: false
  has_one :recipe

end
