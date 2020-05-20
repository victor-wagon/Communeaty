# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

time = Time.new

5.times do
  user = User.create(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 7, max_length: 10))
  3.times do
    meal = Meal.create(title: Faker::Food.dish, description: Faker::Hacker.say_something_smart, house_rules: Faker::Movies::VForVendetta.quote, price: 32.5, capacity: 5, address: Faker::Address.street_address, datetime: "#{Time.now}", user_id: user.id)
    print meal
    2.times do
      yo = Reservation.create(user_id: user.id, meal_id: meal.id, approved: true)
      print yo
    end
  end
end


