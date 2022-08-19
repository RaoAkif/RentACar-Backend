# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name:  "Example-user")
User.create!(name:  "Example-user2")
User.create!(name:  "Example-user3")
Car.create!(name: "Honda", model: "Civic", desc: "This is a Honda Civic", image: "https://www.honda.com/content/dam/honda/na/us/english/images/vehicles/civic/civic-sedan-2019/civic-sedan-2019-exterior-front-left.png", rent: "100.00")
Car.create!(name: "Honda", model: "Accord", desc: "This is a Honda Accord", image: "https://www.honda.com/content/dam/honda/na/us/english/images/vehicles/accord/accord-sedan-2019/accord-sedan-2019-exterior-front-left.png", rent: "200.00")
Car.create!(name: "Honda", model: "CR-V", desc: "This is a Honda CR-V", image: "https://www.honda.com/content/dam/honda/na/us/english/images/vehicles/cr-v/cr-v-sedan-2019/cr-v-sedan-2019-exterior-front-left.png", rent: "300.00")
Car.create!(name: "Chevrolet", model: "Corvette", desc: "This is a Chevrolet Corvette", image: "https://www.chevrolet.com/content/dam/chevrolet/na/us/english/images/vehicles/corvette/corvette-sedan-2019/corvette-sedan-2019-exterior-front-left.png", rent: "400.00")
Car.create!(name: "Chevrolet", model: "Camaro", desc: "This is a Chevrolet Camaro", image: "https://www.chevrolet.com/content/dam/chevrolet/na/us/english/images/vehicles/camaro/camaro-sedan-2019/camaro-sedan-2019-exterior-front-left.png", rent: "500.00")
Car.create!(name: "Chevrolet", model: "Malibu", desc: "This is a Chevrolet Malibu", image: "https://www.chevrolet.com/content/dam/chevrolet/na/us/english/images/vehicles/malibu/malibu-sedan-2019/malibu-sedan-2019-exterior-front-left.png", rent: "600.00")
Reservation.create!(city: "New York", date: Date.parse("2020-01-01"), user_id: 1, car_id: 1)
Reservation.create!(city: "New York", date: Date.parse("2020-01-01"), user_id: 1, car_id: 2)
Reservation.create!(city: "New York", date: Date.parse("2020-01-01"), user_id: 2, car_id: 3)
Reservation.create!(city: "New York", date: Date.parse("2020-01-01"), user_id: 1, car_id: 4)
Reservation.create!(city: "New York", date: Date.parse("2020-01-01"), user_id: 3, car_id: 5)