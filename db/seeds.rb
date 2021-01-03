# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

char_a = Character.create(name: 'Lacy', breed: 'This Breed', auspice: 'This Auspice', tribe: 'The Tribe', concept: 'Concept Here')

stats_a = Stat.create(strength: 'Some', charisma: 'Some', perception: 'Some', dexterity: 'some', manipulation: 'this', intelligence: 'that', stamina: 'lots', appearance: 'this', wit: 'yes')

sheet_a = Sheet.create(character: char_a, stat: stats_a)