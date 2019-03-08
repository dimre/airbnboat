# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning boat database..."
Boat.destroy_all
Profile.destroy_all

User.destroy_all
puts "Seeding database..."

dimi = User.create(email: 'dimitri.reisinger@hotmail.com', first_name: "dimi", last_name: "rgr", password: "123456", remote_photo_url_url: 'https://federalitude.files.wordpress.com/2015/02/le-commandant-cousteau-est-reste-tres-longtemps-image-523990-article-ajust_930.jpg')
dimi.create_profile
yoni = User.create(email: 'zatalo@live.be', first_name: "yoni", last_name: "zata", password: "123456", remote_photo_url_url: 'https://media.licdn.com/dms/image/C5603AQGOLRnm6PaTiw/profile-displayphoto-shrink_200_200/0?e=1556150400&v=beta&t=c70_vPhtYRwhQhgmeE9i1kZM97RfESK7SkivMqMHQOU')
yoni.create_profile
thomas = User.create!(email: 'thomas.cortebeeck93@gmail.com', first_name: "thomas", last_name: "cort", password: "123456", remote_photo_url_url: 'https://federalitude.files.wordpress.com/2015/02/le-commandant-cousteau-est-reste-tres-longtemps-image-523990-article-ajust_930.jpg')
thomas.create_profile

batmoboat = Boat.create(name: "Batmo boat", country: "United States", address: "1 Bleecker Street New York", capacity: 2, description:"The bat boat", price_per_day: 50, user_id: User.last.id)
cousteauboat = Boat.create(name: "Cousteau boat", country: "France", address: "1 Rue du Port Le Havre", capacity: 5, description:"The red bonnet boat", price_per_day: 25, user_id: User.first.id)
pedalo = Boat.create(name: "Pedalo bro", country: "England", address: "1 Hyde Park Street London", capacity: 2, description:"It does not float", price_per_day: 10, user_id: User.last.id)
titanic = Boat.create(name: "Titanic", country: "England", address: "1 London Road Southampton", capacity: 12, description:"We might sink - hold on jack", price_per_day: 80, user_id: User.first.id)
hoboeboat = Boat.create!(name: "Hoboe boat", country: "Belgium", address: "1 Rue de Molenbeek Brussels", capacity: 15, description:"You don't want to rent this", price_per_day: 2, user_id: User.last.id)

batman_pic = Photo.create(remote_photo_url_url: 'http://www.realclearlife.com/wp-content/uploads/2016/11/Batboat-3_1200.jpg', boat_id: 1)
cousteau_pic = Photo.create(remote_photo_url_url: 'https://www.bateaux.com/src/images/news/articles/ee73cf54413939fc748cb82c45770252.jpg', boat_id: 2)
pedalo_pic = Photo.create(remote_photo_url_url: 'http://cdn.oboxeditions.com/sites/prod/files/styles/largehd/public/_7.jpeg', boat_id: 3)
titanic_pic = Photo.create(remote_photo_url_url: 'http://img.over-blog-kiwi.com/1/04/49/45/20181026/ob_6c1a3f_titanic-via-encyclopedia-titanica-2.jpg', boat_id: 4)
hoboe_pic = Photo.create!(remote_photo_url_url: 'https://safety4sea.com/wp-content/uploads/2018/09/Kenya-launches-first-boat-built-entirely-from-recycled-plastic-garbage-e1537433132631.jpeg', boat_id: 5)

puts "Database seeded!"
