require 'json'
require 'open-uri'

Cocktail.destroy_all
document = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
json_doc = JSON.parse(document)
json_doc["drinks"].each do |ing|
  Ingredient.create(name: ing["strIngredient1"])
end
