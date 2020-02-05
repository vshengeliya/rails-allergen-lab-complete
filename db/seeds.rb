# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create(name:"Betty",age:70,experience:"expert")
u2 = User.create(name:"John",age:55,experience:"intermediate")
u3 = User.create(name:"Anna",age:11,experience:"beginner")

r1 = Recipe.create(name:"Mashed potatoes",cuisine:"Russian",user_id:u1.id)
r2 = Recipe.create(name:"Latkes",cuisine:"Jewish",user_id:u2.id)
r3 = Recipe.create(name:"Pancakes",cuisine:"American",user_id:u3.id)

i1 = Ingredient.create(content:"Potato")
i2 = Ingredient.create(content:"Flour")
i3 = Ingredient.create(content:"Butter")
i4 = Ingredient.create(content:"Oil")

IngRec.create(recipe_id:r1.id,ingredient_id:i1.id)
IngRec.create(recipe_id:r2.id,ingredient_id:i1.id)
IngRec.create(recipe_id:r3.id,ingredient_id:i2.id)
IngRec.create(recipe_id:r3.id,ingredient_id:i4.id)
IngRec.create(recipe_id:r2.id,ingredient_id:i4.id)
IngRec.create(recipe_id:r1.id,ingredient_id:i3.id)
