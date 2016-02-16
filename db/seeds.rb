# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(email: 'user1@gmail.com', password: '00000000',first_name: 'Michel', last_name: 'Galabru')
user2 = User.create(email: 'user2@gmail.com', password: '00000000',first_name: 'Josiane', last_name: 'Balasko')
user3 = User.create(email: 'user3@gmail.com', password: '00000000',first_name: 'Johnny', last_name: 'Halliday')
user4 = User.create(email: 'user4@gmail.com', password: '00000000',first_name: 'Philipe', last_name: 'Smet')
user5 = User.create(email: 'user5@gmail.com', password: '00000000',first_name: 'Laure', last_name: 'Artho')
user6 = User.create(email: 'user6@gmail.com', password: '00000000',first_name: 'Elise', last_name: 'Aubin')

bike1 = Bike.create(name: 'vtt', description: 'bon')
bike2 = Bike.create(name: 'fixie', description: 'tres bon')
bike3 = Bike.create(name: 'velo route', description: 'excellent')
bike4 = Bike.create(name: 'hollandais', description: 'moyen')
bike5 = Bike.create(name: 'triporteur', description: 'léger')
bike6 = Bike.create(name: 'allongé', description: 'casse gueule')
