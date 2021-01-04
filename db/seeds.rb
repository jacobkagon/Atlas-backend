# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Country.destroy_all
Favorite.destroy_all
user1 = User.create(username: 'Lionel', password: 'messi', email: 'forza@barca.com')

country1 = Country.create(country_code: "ESP")
country2 = Country.create(country_code: "SEN")


favorite1 = Favorite.create(user_id: user1.id, country_id: country1.id)
favorite2 = Favorite.create(user_id: user1.id, country_id: country2.id)

review1 = Review.create(body: "I love Spain!", rating: 5, user_id: user1.id, country_id: country1.id)
review1 = Review.create(body: "I love Senegal!", rating: 5, user_id: user1.id, country_id: country2.id)