#
# require 'pry'
# require 'rest-client'

# APIkey = '' #RapidApi Key here 
#
# recipedata = RestClient.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=100", {'X-RapidAPI-Key': APIkey, accept: :json})
#
# # binding.pry
# parsedrecipe = JSON.parse(recipedata)
#
# recipes = parsedrecipe["recipes"]
#
# recipes.each do |r|
#   name = r["title"]
#   imgurl = r["image"]
#   instructions = r["instructions"]
#   preptime = r["readyInMinutes"]
#   dishType = r["dishTypes"].reject(&:blank?).join(',')
#   sourceUrl = r["sourceUrl"]
#   servings = r["servings"]
#   whole30 = r["whole30"]
#   keto = r["ketogenic"]
#   dairyFree = r["dairyFree"]
#   glutenFree = r["glutenFree"]
#   vegan = r["vegan"]
#   vegetarian = r["vegetarian"]
#   healthy = r["veryHealthy"]
#   ingredients = r["extendedIngredients"] #this is an array
#
#   currentRecipe = Recipe.create(name: name, imgurl: imgurl, instructions: instructions, preptime: preptime, dishType: dishType, sourceUrl: sourceUrl, servings: servings, whole30: whole30, keto: keto, dairyFree: dairyFree, glutenFree: glutenFree, vegan: vegan, vegetarian: vegetarian, healthy: healthy)
#
#   ingredients.each do |i|
#     name = i["name"]
#     imgurl = i["image"]
#     aisle = i["aisle"]
#     unit = i["unit"]
#     amount = i["amount"]
#
#     currentIngredient = Ingredient.create(name: name, imgurl: imgurl, aisle: aisle)
#     Recipeingredient.create(recipe_id: currentRecipe.id, ingredient_id: currentIngredient.id, unit: unit, amount: amount)
#   end
#   # binding.pry
# end
#
# puts "created #{Recipe.all.length} recipes, #{Ingredient.all.length} ingredients, #{Recipeingredient.all.length} joins"
#
#
