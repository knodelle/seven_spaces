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
Subscription.destroy_all
ChatRoom.destroy_all
User.destroy_all

puts 'creating users ...'
adrien = User.create(email: 'adrien@gmail.com', password: 'azerty', username: "Bgdu93", avatar: "batman-icon.png")
julien = User.create(email: 'julien@gmail.com', password: 'azerty', username: "Juju_tuning33", avatar: "ninja-icon.png")
marie = User.create(email: 'marie@gmail.com', password: 'azerty', username: "Mimie", avatar: "iron-man.jpeg")
julie = User.create(email: 'julie@gmail.com', password: 'azerty', username: "Juttuti", avatar: "avatar-icon.png")
thibaud = User.create(email: 'thibaud@gmail.com', password: 'azerty', username: "Titibs", avatar: "anonymous-icon.png")
florent = User.create(email: 'florent@gmail.com', password: 'azerty', username: "Florizard", avatar: "bobbafet.jpeg")
lea = User.create(email: 'lea@gmail.com', password: 'azerty', username: "Latte", avatar: "darkvador.jpeg")
lucie = User.create(email: 'lucie@gmail.com', password: 'azerty', username: "Lulu", avatar: "ninja-icon.png")
puts 'users done !'
puts 'creating chat rooms...'
url_chat_room1 = "app/assets/images/jo.jpg"
url_chat_room2 = "app/assets/images/chat-trop-chou.jpg"
url_chat_room3 = "app/assets/images/guild_tower.jpg"
url_chat_room4 = "app/assets/images/moba.png"

chat_room1 = ChatRoom.new(title: 'Les JO de Tokyo', description: 'Sports favoris ? Athlète favoris ? Un peu des 2??', user_id: adrien.id)
chat_room1.remote_photo_url = url_chat_room1
chat_room1.save

chat_room2 = ChatRoom.new(title: 'Un salon de chat ?', description: "Qui n'aime pas ces betes la hein ?", user_id: julien.id)
chat_room2.remote_photo_url = url_chat_room2
chat_room2.save

chat_room3 = ChatRoom.new(title: "L'art du monde", description: "Qu'est ce que l'art ? vous avez 4 heures...", user_id: marie.id, photo: "guild_tower.jpg")
chat_room3.remote_photo_url = url_chat_room3
chat_room3.save

chat_room4 = ChatRoom.new(title: "Un peu de gaming", description: "LoL, DotA, HotS ? MOBA ou Pas", user_id: thibaud.id, photo: "moba.png")
chat_room4.remote_photo_url = url_chat_room4
chat_room4.save
puts 'chat rooms created !'


puts 'subscriptions...'

subscription1 = Subscription.create(description: "Bonjour", status: 'Accepted', chat_room: chat_room1, user: lucie)
subscription2 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room4, user: adrien)
subscription3 = Subscription.create(description: "Bonjour", status: 'Accepted', chat_room: chat_room4, user: lucie)
subscription4 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room4, user: julien)
subscription5 = Subscription.create(description: "Bonjour", status: 'Accepted', chat_room: chat_room2, user: lucie)
subscription6 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room2, user: julie)
subscription7 = Subscription.create(description: "Bonjour", status: 'Accepted', chat_room: chat_room3, user: lucie)
subscription8 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room2, user: lea)
subscription9 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room3, user: adrien)
subscription10 = Subscription.create(description: "Bonjour", status: "Accepted", chat_room: chat_room2, user: adrien)

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
technologie = Tag.create!(name: "Technology")
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
chat_room_tag2 = ChatRoomTag.create!(chat_room: chat_room2, tag: animaux)
chat_room_tag3 = ChatRoomTag.create!(chat_room: chat_room1, tag: histoire)
chat_room_tag4 = ChatRoomTag.create!(chat_room: chat_room4, tag: jeux)
chat_room_tag5 = ChatRoomTag.create!(chat_room: chat_room2, tag: religion)
chat_room_tag6 = ChatRoomTag.create!(chat_room: chat_room3, tag: culture)
chat_room_tag7 = ChatRoomTag.create!(chat_room: chat_room4, tag: culture)
chat_room_tag8 = ChatRoomTag.create!(chat_room: chat_room4, tag: technologie)
