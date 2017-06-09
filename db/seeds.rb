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

user2 = User.create(name:  "pepe",
             email: "user@hotmail.com",
             departament_id: departament2.id,
             password:              "password",
             password_confirmation: "password")

user3 = User.create(name:  "pepe",
             email: "user1@hotmail.com",
             departament_id: departament2.id,
             password:              "password",
             password_confirmation: "password")

user4 = User.create(name:  "pepe",
             email: "user2@hotmail.com",
             departament_id: departament2.id,
             password:              "password",
             password_confirmation: "password")



# 20.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                departament_id: departament1.id,
#                password:              password,
#                password_confirmation: password)
# end



ticket1 = Ticket.create(name: "error 1",  description: "mantenimiento 1", departament_id: departament1.id)
ticket2 = Ticket.create(name: 'error 2',  description: "mantenimiento 2", departament_id: departament1.id)
ticket3 = Ticket.create(name: 'error 3',  description: "mantenimiento 3", departament_id: departament1.id)
ticket4 = Ticket.create(name: 'error 4',  description: "mantenimiento 4", departament_id: departament1.id)
ticket5 = Ticket.create(name: 'error 5',  description: "mantenimiento 5", departament_id: departament1.id)
ticket6 = Ticket.create(name: 'error 6',  description: "mantenimiento 6", departament_id: departament1.id)
ticket7 = Ticket.create(name: 'error 7',  description: "mantenimiento 7", departament_id: departament1.id)
ticket8 = Ticket.create(name: 'error 8',  description: "mantenimiento 8", departament_id: departament1.id)


assignment1 = Assignment.create(status: "iniciado", description: "mantenimiento1", user_id: user2.id, ticket_id: ticket1.id)
assignment2 = Assignment.create(status: "proceso", description: "mantenimiento2", user_id: user2.id, ticket_id: ticket2.id)
assignment3 = Assignment.create(status: "iniciado", description: "mantenimiento3", user_id: user2.id, ticket_id: ticket4.id)
assignment4 = Assignment.create(status: "terminado", description: "mantenimiento4", user_id: user2.id, ticket_id: ticket5.id)
assignment5 = Assignment.create(status: "iniciado", description: "mantenimiento1", user_id: user2.id, ticket_id: ticket6.id)
assignment6 = Assignment.create(status: "proceso", description: "mantenimiento2", user_id: user2.id, ticket_id: ticket7.id)
assignment7 = Assignment.create(status: "iniciado", description: "mantenimiento3", user_id: user2.id, ticket_id: ticket8.id)
assignment8 = Assignment.create(status: "terminado", description: "mantenimiento4", user_id: user2.id, ticket_id: ticket3.id)




