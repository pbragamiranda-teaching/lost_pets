# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


16.times do

  Pet.create(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: ['cat', 'dog', 'bird', 'frog'].sample,
    found_on: Date.today - rand(30)
    )

end
