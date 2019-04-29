class Recipebox < ApplicationRecord

  belongs_to :user, required: false
  belongs_to :recipe, required: false

  validates_uniqueness_of :user_id, scope: :recipe_id

end
