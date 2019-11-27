# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Starting ....'
puts 'Cleaning...'
ChatRoom.destroy_all
User.destroy_all

puts 'creating users ...'
adrien = User.create(email: 'adrien.peres@gmail.com', password: 'azerty')
julien = User.create(email: 'julien@gmail.com', password: 'azerty')
puts 'users done !'
puts 'creating chat rooms...'
ChatRoom.create(title: 'Chat room 1', description: 'lorem ipsum', user_id: adrien.id)
ChatRoom.create(title: 'Chat room de Julien', description: 'lorem pas ipsum', user_id: julien.id)

puts 'chat rooms created !'

puts 'completed !'

