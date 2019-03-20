class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :profile_pic, :bio, :allergies, :diet

  has_many :recipeboxes

  class RecipeboxSerializer < ActiveModel::Serializer
    attributes :id, :recipe_id
  end

end
