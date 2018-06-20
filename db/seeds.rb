# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

ingredients = Ingredient.create([{ name: 'pepperoni' },
                                 { name: 'mozzarella' },
                                 { name: 'tomato' },
                                 { name: 'olives' },
                                 { name: 'onions' },
                                 { name: 'artichokes' },
                                 { name: 'ham' },
                                 { name: 'shrimp' },
                                 { name: 'mushrooms' },
                                 { name: 'pineapple' }])

recipe_1 = Recipe.create(name:'Super Pepperoni', price:10000, picture_file_name: 'super_pepperoni.jpg')
recipe_1 = Recipe.create(name:'Napolitana', price:9000, picture_file_name: 'napolitana.jpg')
recipe_1 = Recipe.create(name:'Hawaiana', price:11000, picture_file_name: 'hawaiana.jpg')

recipe_ingredients = RecipeIngredient.create([{ingredient: Ingredient.find_by(name: 'pepperoni'), recipe: Recipe.find_by(name: 'Super Pepperoni')},
                                              {ingredient: Ingredient.find_by(name: 'mozzarella'), recipe: Recipe.find_by(name: 'Super Pepperoni')},
                                              {ingredient: Ingredient.find_by(name: 'mozzarella'), recipe: Recipe.find_by(name: 'Napolitana')},
                                              {ingredient: Ingredient.find_by(name: 'ham'), recipe: Recipe.find_by(name: 'Napolitana')},
                                              {ingredient: Ingredient.find_by(name: 'olives'), recipe: Recipe.find_by(name: 'Napolitana')},
                                              {ingredient: Ingredient.find_by(name: 'mozzarella'), recipe: Recipe.find_by(name: 'Hawaiana')},
                                              {ingredient: Ingredient.find_by(name: 'ham'), recipe: Recipe.find_by(name: 'Hawaiana')},
                                              {ingredient: Ingredient.find_by(name: 'pineapple'), recipe: Recipe.find_by(name: 'Hawaiana')}])

