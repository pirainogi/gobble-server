class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :imgurl, :instructions, :preptime, :dishType, :sourceUrl, :servings, :whole30, :keto, :dairyFree, :glutenFree, :vegan, :vegetarian, :healthy, :ingredients

  has_many :ingredients

  class IngredientSerializer < ActiveModel::Serializer
    attributes :name, :aisle

    has_many :recipeingredients

    class RecipeingredientSerializer < ActiveModel::Serializer
      attributes :amount, :unit
    end

  end

end

  # class IngredientSerializer < ActiveModel::Serializer
  #   attributes :id, :name, :imgurl, :aisle
  # end
  #
  # def ingredients
  #   self.object.ingredients.map do |ingredient|
  #      # ri = find.Receipe.whatever
  #      # amount ri.amount
  #      #unit ri.unit
  #     {
  #       id: ingredient.id,
  #       name: ingredient.name,
  #       imgurl: ingredient.imgurl,
  #       aisle: ingredient.aisle,
  #       amount: Recipeingredient.all.select{ |ri| ri.recipe_id == self.object.id && ri.ingredient_id == ingredient.id }[0].amount,
  #       unit: Recipeingredient.all.select{ |ri| ri.recipe_id == self.object.id && ri.ingredient_id == ingredient.id }[0].unit
  #     }
  #   end
  # end
