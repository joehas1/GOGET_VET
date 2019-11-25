puts 'Deleting previous data'
# AppointedPet.destroy_all
# Appointment.destroy_all
# FavoritedVet.destroy_all
Appointment.destroy_all
Pet.destroy_all
Vet.destroy_all
Client.destroy_all
User.destroy_all

appointments = [
  {
    description: "",
    address: "",
  }
]

pets = [
  {
    pets_type: "Dog - Labrador",
    name: "Figaro",
    history: "All vaccines cleared",
    picture: "https://images.unsplash.com/photo-1499789853431-fcbf274f57b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  },
  {
    pets_type: "Cat - Siamois",
    name: "Berlioz",
    history: "Nothing to declare",
    picture: "https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
  },
  {
    pets_type: "pig - Mulefoot",
    name: "Muddy the 1st",
    history: "All vaccines cleared",
    picture: "https://images.unsplash.com/photo-1567201080580-bfcc97dae346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80"
  },
  {
    pets_type: "dog - Pug",
    name: "Clinton",
    history: "All vaccines cleared",
    picture: "https://images.unsplash.com/photo-1553481829-2391f26d609c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=933&q=80"
  },
  {
    pets_type: "dog - Poodle",
    name: "Roux",
    history: "All vaccines cleared",
    picture: "https://images.unsplash.com/photo-1516371535707-512a1e83bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"
  },
]

users =[
  {
    email: "user1@gmail.com",
    password: "123456",
    first_name: "Kelly",
    last_name: "Walker",
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
    first_name: "Josephine",
    last_name: "Vankap",
    picture: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80"
  },
  {
    email: "user7@gmail.com",
    password: "123456",
    first_name: "Lawrence",
    last_name: "Campton",
    picture: "https://images.unsplash.com/photo-1544098485-2a2ed6da40ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
  }
]

clients = [
  {
  address: "",
  languages: ""
  }
]

vets = [
  {
    address: "Campeche 101, Roma Sur, Cuauhtémoc, 06760 Ciudad de México, CDMX",
    availability: "",
    rate: "2",
    languages: "french english spanish"
  },
  {
    address: "Av. José Martí 219, Escandón I Secc, Miguel Hidalgo, 11800 Ciudad de México, CDMX",
    availability: "",
    rate: "3",
    languages: "french english spanish"
  },
  {
    address: "Aguascalientes 114-108, Roma Sur, Cuauhtémoc, 06760 Ciudad de México, CDMX",
    availability: "",
    rate: "4",
    languages: "french english spanish"
  },
  {
    address: "Coahuila 145, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
    availability: "",
    rate: "5",
    languages: "french english spanish"
  },
  {
    address: "Culiacan 48, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
    availability: "",
    rate: "2",
    languages: "french english spanish"
  },
  {
    address: "Agustín Melgar 42, Colonia Condesa, Cuauhtémoc, 06140 Ciudad de México, CDMX",
    availability: "",
    rate: "3",
    languages: "french english spanish"
  },
  {
    address: "Tonalá 5, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
    availability: "",
    rate: "5",
    languages: "french english spanish"
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

vets.each do |vet|
  v = Vet.new(vet)
  user = User.first
  v.user = user
  v.save!
end

appointments.each do |appointment|
  a = Appointment.new(appointment)
  client = Client.first
  a.client = client
  vet = Vet.first
  a.vet = vet
  a.save!
end

puts 'Creating Appointments'

core_user = User.new
core_user.email = "tori@gmail.com"
core_user.password = "123456"
core_user.save!

puts 'Created core user'
