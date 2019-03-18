class RecipeingredientSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :ingredient_id, :unit, :amount
end
