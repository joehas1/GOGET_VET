puts 'Deleting previous data'
# AppointedPet.destroy_all
# Appointment.destroy_all
# FavoritedVet.destroy_all
Pet.destroy_all
Appointment.destroy_all
Vet.destroy_all
Client.destroy_all
User.destroy_all


pets = [
  {
    pets_type: "Dog - Labradoodle",
    name: "Roux",
    history: "All vaccines cleared",
    picture: "https://images.unsplash.com/photo-1515722467270-dfefadd22f6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
  },
  {
    pets_type: "Mavis - Labradoodle",
    name: "Mavis",
    history: "All vaccines cleared",
    picture: "https://cdn.vox-cdn.com/thumbor/bM8Nm5pdNWHzXzbNPatkKlQlml0=/0x0:5616x3744/1200x800/filters:focal(2359x1423:3257x2321)/cdn.vox-cdn.com/uploads/chorus_image/image/65338389/AdobeStock_113544325.0.jpeg",
  },
  {
    pets_type: "Pig - Mulefoot",
    name: "Muddy the 1st",
    history: "Nothing to declare",
    picture: "https://images.unsplash.com/photo-1567201080580-bfcc97dae346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
  },
  {
    pets_type: "Dog - Pug",
    name: "Inari",
    history: "All vaccines cleared",
    picture:"https://imgc.allpostersimages.com/img/print/u-g-Q106AHH0.jpg?w=550&h=550&p=0"

  }
]

users =[
  {
    email: "tori@gmail.com",
    password: "123456",
    first_name: "Tori",
    last_name: "Walker",
    picture: "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
  },
  {
    email: "user1@gmail.com",
    password: "123456",
    first_name: "Kelly",
    last_name: "Johnson",
    picture: "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"
  },
  {
    email: "user2@gmail.com",
    password: "123456",
    first_name: "René",
    last_name: "Dupuis",
    picture: "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80"
  },
  {
    email: "user3@gmail.com",
    password: "123456",
    first_name: "Martin",
    last_name: "Wouters",
    picture: "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
  },
  {
    email: "user4@gmail.com",
    password: "123456",
    first_name: "Sacha",
    last_name: "Sweetish",
    picture: "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
  },
  {
    email: "user5@gmail.com",
    password: "123456",
    first_name: "Marcus",
    last_name: "Delablo",
    picture: "https://images.unsplash.com/photo-1552072805-2a9039d00e57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
  },
  {
    email: "user6@gmail.com",
    password: "123456",
    first_name: "Clemence",
    last_name: "Delavera",
    picture: "https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1635&q=80"
  },
  {
    email: "user7@gmail.com",
    password: "123456",
    first_name: "Joséphine",
    last_name: "Galindo",
    picture: "https://images.unsplash.com/photo-1536064479547-7ee40b74b807?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  }
]

clients = [
  {
  address: "1234 Fun Street",
  languages: "English",
  }
]

vets = [
  {
    address: "Campeche 101, Roma Sur, Cuauhtémoc, 06760 Ciudad de México, CDMX",
    availability: "",
    rate: "1200",
    languages: "french english"
  },
  {
    address: "Av. José Martí 219, Escandón I Secc, Miguel Hidalgo, 11800 Ciudad de México, CDMX",
    availability: "",
    rate: "1300",
    languages: "french english spanish"
  },
  {
    address: "Aguascalientes 114-108, Roma Sur, Cuauhtémoc, 06760 Ciudad de México, CDMX",
    availability: "",
    rate: "1900",
    languages: "french english"
  },
  {
    address: "Coahuila 145, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
    availability: "",
    rate: "1700",
    languages: "french english spanish"
  },
  {
    address: "Culiacan 48, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
    availability: "",
    rate: "1800",
    languages: "english"
  },
  {
    address: "Praga 31, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
    availability: "",
    rate: "1900",
    languages: "english"
  },
  {
    address: "Puebla 364, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
    availability: "",
    rate: "1700",
    languages: "english spanish"
  }
]

puts 'Creating users'

users.each do |usr|
  user = User.new(usr)
  user.save!
end

puts 'Creating clients'

clients.each do |client|
  cli = Client.new(client)
  user = User.first
  cli.user = user
  cli.save!
end

puts 'Creating pets'

pets.each do |pet|
  p = Pet.new(pet)
  client = Client.first
  p.client = client
  p.save!
end

puts 'Creating vets'
db_users = User.last(7)

vets.each_with_index do |vet, index|
  v = Vet.new(vet)
  v.user = User.find(db_users[index].id)
  v.save!
end





