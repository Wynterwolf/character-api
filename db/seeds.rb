# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

char_a = Character.create(name: 'This Name', breed: 'This Breed', auspice: 'This Auspice', tribe: 'The Tribe', concept: 'Concept Here', strength: 1, charisma: 1, perception: 1, dexterity: 1, manipulation: 1, intelligence: 1, stamina: 1, appearance: 1, wit: 1)

Jenny = User.create(name: "Jenny from the block", username: "J-lowlow", email: "thatgirl@thatgirl.com")