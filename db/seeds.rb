require 'json'
require 'open-uri'

buffer = open("https://api.themoviedb.org/3/movie/popular?api_key=63759eccae824fa88e79218786680970&language=en-US&page=1").read
result = JSON.parse(buffer)
p result
