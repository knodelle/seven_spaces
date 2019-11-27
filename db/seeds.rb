# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Starting ....'

puts 'creating users ...'
adrien = User.create(email: 'adrien.peres@gmail.com', password: 'azerty')
puts 'users done !'
puts 'creating chat rooms...'
ChatRoom.create(title: 'Chat room 1', description: 'lorem ipsum')
puts 'chat rooms created !'

puts 'completed !'

