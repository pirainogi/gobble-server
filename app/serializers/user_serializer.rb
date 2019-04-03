class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :profile_pic, :bio, :allergies, :diet

  has_many :recipes
  has_many :events

  class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :name, :imgurl, :instructions, :preptime, :dishType, :sourceUrl, :servings, :whole30, :keto, :dairyFree, :glutenFree, :vegan, :vegetarian, :healthy, :ingredients
  end

  class EventSerializer < ActiveModel::Serializer
    attributes :id, :eventStart, :eventEnd, :eventType, :name
  end

end
