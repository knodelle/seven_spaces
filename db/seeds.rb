# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Starting ....'
puts 'Cleaning...'
ChatRoomTag.destroy_all
Tag.destroy_all
ChatRoom.destroy_all
User.destroy_all

puts 'creating users ...'
adrien = User.create(email: 'adrien.peres@gmail.com', password: 'azerty', username: "Bgdu93")
julien = User.create(email: 'julien@gmail.com', password: 'azerty', username: "Juju_tuning33")
puts 'users done !'
puts 'creating chat rooms...'
chat_room1 = ChatRoom.create(title: 'Chat room 1', description: 'lorem ipsum', user_id: adrien.id)
chat_room2 = ChatRoom.create(title: 'Chat room de Julien', description: 'lorem pas ipsum', user_id: julien.id)

puts 'chat rooms created !'

puts 'completed !'

informatique = Tag.create!(name: "informatique");
cuisine = Tag.create!(name: "cuisine");
sport = Tag.create!(name: "sport");

chat_room_tag1 = ChatRoomTag.create!(chat_room: chat_room1, tag: informatique)
chat_room_tag2 = ChatRoomTag.create!(chat_room: chat_room2, tag: informatique)
chat_room_tag3 = ChatRoomTag.create!(chat_room: chat_room1, tag: cuisine)
