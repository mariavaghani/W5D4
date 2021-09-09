# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(email: 'user1@example.com')
user2 = User.new(email: 'maria@example.com')
user3 = User.new(email: 'rebecca@example.com')
user4 = User.new(email: 'cathy@example.com')
user5 = User.new(email: 'raz@example.com')
user1.save
user2.save
user3.save
user4.save
user5.save

url1 = ShortenedUrl.new(short_url: "www.google.com", long_url: "http://www.google.com/1234", user_id:1)
url2 = ShortenedUrl.new(short_url: "www.flower.com", long_url: "http://www.flower.com/1234", user_id:2)
url3 = ShortenedUrl.new(short_url: "www.oracle.com", long_url: "http://www.oracle.com/1234", user_id:3)
url4 = ShortenedUrl.new(short_url: "www.app.com", long_url: "http://www.app.com/1234", user_id:4)
url5 = ShortenedUrl.new(short_url: "www.academy.com", long_url: "http://www.academy.com/1234", user_id:5)
url6 = ShortenedUrl.new(short_url: "www.open.com", long_url: "http://www.open.com/1234", user_id:6)
url1.save
url2.save
url3.save
url4.save
url5.save
url6.save


