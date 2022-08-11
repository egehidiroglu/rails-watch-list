require 'json'
require 'open-uri'

buffer = URI.open("https://api.themoviedb.org/3/movie/popular?api_key=63759eccae824fa88e79218786680970&language=en-US&page=1").read
result = JSON.parse(buffer)
results = result["results"]

results.each do |movie|
  Movie.create(
    title: movie["original_title"],
    overview: movie["overview"],
    rating: movie["vote_average"],
    poster_url: "https://image.tmdb.org/t/p/original/#{movie["poster_path"]}"
  )
end
