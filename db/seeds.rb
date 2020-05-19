# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  user = User.create!(email: "test@gmail.com", password: "123123")
  rand(1..4).times do
    meal = Meal.create(name: "some name", user: user)
    rand(1..4.times) do
      Reservation.create!(meal: meal, user: User.all.sample, .....)
    end
  end
end
