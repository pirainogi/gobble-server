class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :profile_pic, :bio, :allergies, :diet

  has_many :recipes

  class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :name, :imgurl, :instructions, :preptime, :dishType, :sourceUrl, :servings, :whole30, :keto, :dairyFree, :glutenFree, :vegan, :vegetarian, :healthy, :ingredients
  end

end
