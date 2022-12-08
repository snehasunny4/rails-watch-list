5.times do
  movie = Movie.create(
    title: Faker::Movies::HarryPotter.book,
    overview: Faker::Movies::HarryPotter.quote,
    rating: Faker::Number.between(from: 0.0, to: 10.0).round(2)
  )
end

4.times do
  list = List.create(
    name: Faker::Book.genre
  )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
