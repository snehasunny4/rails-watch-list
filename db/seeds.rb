require "open-uri"
require "json"

5.times do
  movies_serialized = URI.open("http://tmdb.lewagon.com/movie/top_rated?").read
  movies = JSON.parse(movies_serialized)['results']
    movies.each do |movie|
      Movie.create(
        title: movie["original_title"],
        overview: movie["overview"],
        poster_url: movie["poster_path"],
        rating: movie["vote_average"]
      )
    end
end



List.create(name: 'Favorites')
List.create(name: "Comedy")
