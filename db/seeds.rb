# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'
# require 'JSON'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# file = open(url).read
# json = JSON.parse(file)
# json.each do |value, key|
#   Ingredient.create(name: value)
# end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "water")
Ingredient.create(name: "gin")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "ram")
Ingredient.create(name: "tonic water")
Ingredient.create(name: "sparkling water")
Ingredient.create(name: "lime")
