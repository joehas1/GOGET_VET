puts 'Deleting previous data'
# AppointedPet.destroy_all
# Appointment.destroy_all
# FavoritedVet.destroy_all
Pet.destroy_all
Vet.destroy_all if Rails.env.development?
Client.destroy_all
User.destroy_all
Appointment.destroy_all

clients = [
  {
    address: "Campeche 233, Condesa"
  },
  {
    address: "Ario 18, Roma Norte"
  },
  {
    address: "Sonora 144, Condesa"
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
  }
]

users =[
  {
    email: "client1@gmail.com",
    password: "123456",
    first_name: "Kelly",
    last_name: "Walker",
    picture: ""
  },
  {
    email: "client2@gmail.com",
    password: "123456",
    first_name: "René",
    last_name: "Dupuis",
    picture: ""

  },
  {
    email: "client3@gmail.com",
    password: "123456",
    first_name: "Martin",
    last_name: "Wouters",
    picture: ""
  }
]

vets = [
  {
    address: "Medellin 178",
    availability: "",
    rate: "4"
    languages: "french"
  },
  {
    address: "Medellin 170",
    availability: "",
    rate: "5"
    languages: "english"
  },
  {
    address: "Campeche 56",
    availability: "",
    rate: "2"
    languages: "spanish"
  }
]
end

appointments = [
  {
    description: "Dog has a scrape on its leg",
    address: "Medellin 178"
  },
  {
    description: "Dog has a very strong cough",
    address: "Medellin 170"
  },
  {
    description: "Dog has an ear infection",
    address: "Campeche 56"
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
