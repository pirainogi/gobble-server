# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'unirest'
# require 'JSON'
require 'pry'
require 'rest-client'
#
recipedata = RestClient.get("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=100", {'X-RapidAPI-Key': "d1e3591dfemsh3fbae5956f79f02p15b138jsn6de0ea18fea8", accept: :json})

  # puts recipedata
# binding.pry
parsedrecipe = JSON.parse(recipedata)
#
recipes = parsedrecipe["recipes"]

recipes.each do |r|
  name = r["title"]
  imgurl = r["image"]
  instructions = r["instructions"]
  preptime = r["readyInMinutes"]
  dishType = r["dishTypes"].reject(&:blank?).join(',')
  sourceUrl = r["sourceUrl"]
  servings = r["servings"]
  whole30 = r["whole30"]
  keto = r["ketogenic"]
  dairyFree = r["dairyFree"]
  glutenFree = r["glutenFree"]
  vegan = r["vegan"]
  vegetarian = r["vegetarian"]
  healthy = r["veryHealthy"]
  ingredients = r["extendedIngredients"] #this is an array

  currentRecipe = Recipe.create(name: name, imgurl: imgurl, instructions: instructions, preptime: preptime, dishType: dishType, sourceUrl: sourceUrl, servings: servings, whole30: whole30, keto: keto, dairyFree: dairyFree, glutenFree: glutenFree, vegan: vegan, vegetarian: vegetarian, healthy: healthy)

  ingredients.each do |i|
    name = i["name"]
    imgurl = i["image"]
    aisle = i["aisle"]
    unit = i["unit"]
    amount = i["amount"]

    currentIngredient = Ingredient.create(name: name, imgurl: imgurl, aisle: aisle)
    Recipeingredient.create(recipe_id: currentRecipe.id, ingredient_id: currentIngredient.id, unit: unit, amount: amount)
  end
  # binding.pry
end

puts "created #{Recipe.all.length} recipes, #{Ingredient.all.length} ingredients, #{Recipeingredient.all.length} joins"

# array = ["name", "name", "othername"]
#
# array.each do |n|
#   Ingredient.create(name: n)
# end
