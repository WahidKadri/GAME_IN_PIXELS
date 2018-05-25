Review.destroy_all
puts "destroying reviews"

Booking.destroy_all
puts "destroying bookings"

Console.destroy_all
puts "destroying consoles"

User.destroy_all
puts "destroying users"

puts "user creation"

users = [
  { email: 'alexandre@gmail.com', password: 123456 },
  { email: 'wahid@gmail.com', password: 123456 },
  { email: 'hugo@gmail.com', password: 123456 }
]

users.each do |user|
  User.create(user)
end

puts "users created"
puts "consoles creation"


consoles = [
  { brand: 'NINTENDO', model: 'N64', number_of_pads: 4, description: "magnifique console", address: "16 Villa Gaudelet 75011 Paris", price: 9, user: User.first },
  { brand: 'NINTENDO', model: 'SUPERNES', number_of_pads: 2, description: "belle console livrée avec péritel", address: "18 rue Oberkampf 75011 Paris", price: 13, user: User.first },
  { brand: 'SEGA', model: 'MASTER SYSTEM 1', number_of_pads: 2, description: "restaurée avec soin", address: "13 rue Saint Maur 75011 Paris", price: 11, user: User.first },
  { brand: 'SEGA', model: 'MASTER SYSTEM 2', number_of_pads: 2, description: "pensez à souffler sur les cartouches", address: "110 rue Jean Pierre Timbaud 75011 Paris", price: 12, user: User.first },
  { brand: 'SEGA', model: 'MEGADRIVE 16 BITS', number_of_pads: 2, description: "trop d'la balle", address: "3 rue du 8 mai 1945 75011 Paris", price: 14, user: User.first },
  { brand: 'ATARI', model: '2 600', number_of_pads: 2, description: "des jeux incontournables", address: "17 place de la bastille 75011 Paris", price: 6, user: User.last },
  { brand: 'NINTENDO', model: 'SUPER NINTENDO', number_of_pads: 2, description: "plein de nostalgie", address: "23 avenue Jean Aicard 75011 Paris", price: 11, user: User.last },
  { brand: 'SEGA', model: 'GAME GEAR', number_of_pads: 1, description: "légèrement rayée", address: "118 boulevard Voltaire 75011 Paris", price: 6, user: User.last },
  { brand: 'NINTENDO', model: 'GAMEBOY FAT Fat', number_of_pads: 1, description: "pas de cache pile", address: "150 rue Oberkampf 75011 Paris", price: 10, user: User.last },
  { brand: 'SEGA', model: 'SATURNE', number_of_pads: 2, description: "comme neuve (ou presque...)", address: "7 avenue Gambetta 75011 Paris", price: 13, user: User.last }
]

# urls = []
# consoles.each_with_index do |console, index|
#   game = Console.new(console)
#   game.remote_photo_url = urls[index]
#   game.save
# end

puts "Creation finished !"
