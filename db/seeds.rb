# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipes =[]

5.times do |index|
	recipe_new = Recipe.create(title: Faker::Food.vegetables, description: Faker::Lorem.sentence(word_count: 10))
recipes << recipe_new
end

admin = User.create(email: "eva.papazian@mail.be", password: "trucbidule", is_admin: true, first_name: "Eva", last_name: "Papazian")