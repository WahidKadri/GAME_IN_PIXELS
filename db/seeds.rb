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
  { brand: 'nintendo', model: 'n64', number_of_pads: 4, description: "magnifique console", address: "16 Villa Gaudelet 75011 Paris", price: 9, user_id: 1 },
  { brand: 'nintendo', model: 'supernes', number_of_pads: 2, description: "belle console livrée avec péritel", address: "18 rue Oberkampf 75011 Paris", price: 13, user_id: 2 },
  { brand: 'sega', model: 'master system 1', number_of_pads: 2, description: "restaurée avec soin", address: "13 rue Saint Maur 75011 Paris", price: 11, user_id: 2 },
  { brand: 'sega', model: 'master system 2', number_of_pads: 2, description: "pensez à souffler sur les cartouches", address: "110 rue Jean Pierre Timbaud 75011 Paris", price: 12, user_id: 2 },
  { brand: 'sega', model: 'megadrive 16 bits', number_of_pads: 2, description: "trop d'la balle", address: "3 rue du 8 mai 1945 75011 Paris", price: 14, user_id: 2 },
  { brand: 'atari', model: '2 600', number_of_pads: 2, description: "des jeux incontournables", address: "17 place de la bastille 75011 Paris", price: 6, user_id: 3 },
  { brand: 'nintendo', model: 'super nintendo', number_of_pads: 2, description: "plein de nostalgie", address: "23 avenue Jean Aicard 75011 Paris", price: 11, user_id: 3 },
  { brand: 'sega', model: 'game gear', number_of_pads: 1, description: "légèrement rayée", address: "118 boulevard Voltaire 75011 Paris", price: 6, user_id: 3 },
  { brand: 'nintendo', model: 'GameBoy Fat', number_of_pads: 1, description: "pas de cache pile", address: "150 rue Oberkampf 75011 Paris", price: 10, user_id: 3 },
  { brand: 'sega', model: 'saturne', number_of_pads: 2, description: "comme neuve (ou presque...)", address: "7 avenue Gambetta 75011 Paris", price: 13, user_id: 3 }
]

consoles.each do |console|
  Console.create(console)
end

puts "Creation finished !"
