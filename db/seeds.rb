# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning boat database..."
Boat.destroy_all
User.destroy_all
puts "Seeding database..."

dimi = User.create(email: 'dimitri.reisinger@hotmail.com', first_name: "dimi", last_name: "rgr", password: "123456")
yoni = User.create(email: 'zatalo@live.be', first_name: "yoni", last_name: "zata", password: "123456")
thomas = User.create(email: 'thomas.cortebeeck93@gmail.com', first_name: "thomas", last_name: "cort", password: "123456")

batmoboat = Boat.create(name: "Batmo boat", country: "United States", address: "Gotham", capacity: 2, description:"The bat boat", price_per_day: 50, user_id: User.last.id)
cousteauboat = Boat.create(name: "Cousteau boat", country: "France", address: "Brittany", capacity: 5, description:"The red bonnet boat", price_per_day: 25, user_id: User.first.id)
pedalo = Boat.create(name: "Pedalo bro", country: "England", address: "Hyde Park", capacity: 2, description:"It does not float", price_per_day: 10, user_id: User.last.id)
titanic = Boat.create(name: "Titanic", country: "England", address: "Iceberg street", capacity: 12, description:"We might sink - hold on jack", price_per_day: 80, user_id: User.first.id)
hoboeboat = Boat.create(name: "Hoboe boat", country: "Belgium", address: "Molenbeek", capacity: 15, description:"You don't want to rent this", price_per_day: 2, user_id: User.last.id)

batman_pic = Photo.create(remote_photo_url_url: 'http://www.realclearlife.com/wp-content/uploads/2016/11/Batboat-3_1200.jpg', boat_id: 1)
cousteau_pic = Photo.create(remote_photo_url_url: 'https://www.bateaux.com/src/images/news/articles/ee73cf54413939fc748cb82c45770252.jpg', boat_id: 2)
pedalo_pic = Photo.create(remote_photo_url_url: 'http://cdn.oboxeditions.com/sites/prod/files/styles/largehd/public/_7.jpeg', boat_id: 3)
titanic_pic = Photo.create(remote_photo_url_url: 'http://img.over-blog-kiwi.com/1/04/49/45/20181026/ob_6c1a3f_titanic-via-encyclopedia-titanica-2.jpg', boat_id: 4)
hoboe_pic = Photo.create(remote_photo_url_url: 'https://safety4sea.com/wp-content/uploads/2018/09/Kenya-launches-first-boat-built-entirely-from-recycled-plastic-garbage-e1537433132631.jpeg', boat_id: 5)

puts "Database seeded!"


