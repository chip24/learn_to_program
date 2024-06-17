require "net/http"
require "json"

apikey = "7ea07d4"
request = "http://www.omdbapi.com/?apikey=#{apikey}"

#request = "http://www.omdbapi.com/?i=tt3896198&apikey=7ea07d4"

url = URI(request + "&s=\"Paris Is Burning\"")
#url = URI(request)

search_hash = JSON.parse(Net::HTTP.get(url))
p search_hash

movies = search_hash["Search"]
movies.each_with_index do |movie, idx|
  puts "#{idx + 1}. (#{movie["Type"]}) #{movie["Title"]}"
end

poster_url = movies[0]["Poster"]
imdb_url = "https://www.imdb.com/title/#{movies[0]["imdbID"]}"

puts poster_url
puts imdb_url

#system("xdg-open",poster_url)
#system("xdg-open",imdb_url)
