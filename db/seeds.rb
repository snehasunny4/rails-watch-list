5.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    rating: Faker::Number.between(from: 0.0, to: 10.0).round(2)
  )
end

list = {
  List.create(name: "Horror"),
  List.create(name: "Family"),
  List.create(name: "Comedy"),
  List.create(name: "Favorites")
}
