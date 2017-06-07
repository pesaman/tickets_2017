# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

departament1 = Departament.create(name: 'informatica',  description: 'mantenimiento')
departament2 = Departament.create(name: 'logistica',  description: 'mantenimiento')
departament3 = Departament.create(name: 'soporte',  description: 'mantenimiento')

user1 = User.create(name:  "juan",
             email: "admin@hotmail.com",
             departament_id: departament1.id,
             password:              "password",
             password_confirmation: "password",
             admin: true)

user2 = User.create(name:  "pepe'",
             email: "user@hotmail.com",
             departament_id: departament1.id,
             password:              "password",
             password_confirmation: "password")

20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               departament_id: departament1.id,
               password:              password,
               password_confirmation: password)
end



ticket1 = Ticket.create(name: 'informatica',  description: 'mantenimiento', departament_id: departament1.id)
ticket2 = Ticket.create(name: 'informatica',  description: 'mantenimiento2', departament_id: departament1.id)
ticket3 = Ticket.create(name: 'informatica',  description: 'mantenimiento3', departament_id: departament1.id)
ticket4 = Ticket.create(name: 'informatica',  description: 'mantenimiento4', departament_id: departament1.id)


assignment1 = Assignment.create(status: 'soporte', description: 'mantenimiento', user_id: user2.id, ticket_id: ticket1.id)
assignment2 = Assignment.create(status: 'soporte', description: 'mantenimiento', user_id: user2.id, ticket_id: ticket2.id )




