# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning boat database..."
Boat.destroy_all
puts "Seeding database..."

dimi = User.create(email: 'dimitri.reisinger@hotmail.com', first_name: "dimi", last_name: "rgr", password: "123456")
yoni = User.create(email: 'zatalo@live.be', first_name: "yoni", last_name: "zata", password: "123456")
thomas = User.create(email: 'thomas.cortebeeck93@gmail.com', first_name: "thomas", last_name: "cort", password: "123456")

batmoboat = Boat.create(name: "Batmo boat", country: "United States", address: "gotham", capacity: 2, description:"the bat boat", price_per_day: 50, user: User.all.sample )
cousteauboat = Boat.create(name: "Cousteau boat", country: "France", address: "brittany", capacity: 5, description:"the red bonnet boat", price_per_day: 25, user: User.last)
hoboeboat = Boat.create(name: "Hoboe boat", country: "Belgium", address: "molenbeek", capacity: 15, description:"you don't want to rent this", price_per_day: 2)
titanic = Boat.create(name: "Titanic", country: "England", address: "Iceberg street", capacity: 12, description:"we might sink-hold on jack", price_per_day: 80)


puts "Database seeded!"


