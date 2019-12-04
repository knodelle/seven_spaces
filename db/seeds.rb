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

art = Tag.create!(name: "Art")
litterature = Tag.create!(name: "Litterature")
culture = Tag.create!(name: "Culture")
film = Tag.create!(name: "Film")
alimentation = Tag.create!(name: "Alimentation")
jeux = Tag.create!(name: "Jeux")
humour = Tag.create!(name: "Humour")
musique = Tag.create!(name: "Musique")
photo = Tag.create!(name: "Photo")
reseaux = Tag.create!(name: "Réseaux sociaux")
sport = Tag.create!(name: "Sport")
mode = Tag.create!(name: "Mode")
ecriture = Tag.create!(name: "Écriture")
business = Tag.create!(name: "Business")
design = Tag.create!(name: "Design")
economie = Tag.create!(name: "Economie")
freelance = Tag.create!(name: "Freelance")
productivite = Tag.create!(name: "productivité")
startups = Tag.create!(name: "Startup")
accessibility = Tag.create!(name: "Accessibilité")
informatique = Tag.create!(name: "Informatique")
science = Tag.create!(name: "Science")
technology = Tag.create!(name: "Technology")
nature = Tag.create!(name: "Nature")
addictions = Tag.create!(name: "Addictions")
handicap = Tag.create!(name: "Handicap")
diy = Tag.create!(name: "Do it yourself")
sante = Tag.create!(name: "Santé")
style_de_vie = Tag.create!(name: "Style de vie")
sante_mental = Tag.create!(name: "Santé mentale")
pleine_conscience = Tag.create!(name: "Pleine conscience")
argent = Tag.create!(name: "Argent")
famille = Tag.create!(name: "Famille")
relations = Tag.create!(name: "Relations")
sexualite = Tag.create!(name: "Sexualité")
spiritualite = Tag.create!(name: "Spiritualité")
neurodiversite = Tag.create!(name: "Neurodiversité")
environment = Tag.create!(name: "Environment")
animaux = Tag.create!(name: "Animaux")
egalite = Tag.create!(name: "Egalité")
future = Tag.create!(name: "Future")
histoire = Tag.create!(name: "Histoire")
lgbtqia  = Tag.create!(name: "LGBTQIA")
philosophie = Tag.create!(name: "Philosophie")
politique = Tag.create!(name: "Politique")
racisme = Tag.create!(name: "Racisme")
religion = Tag.create!(name: "Religion")
societe = Tag.create!(name: "Société")
feminisme = Tag.create!(name: "Feminisme")

chat_room_tag1 = ChatRoomTag.create!(chat_room: chat_room1, tag: sport)
chat_room_tag2 = ChatRoomTag.create!(chat_room: chat_room2, tag: sante)
chat_room_tag3 = ChatRoomTag.create!(chat_room: chat_room1, tag: histoire)
