require "net/http"
require "json"

url = URI("https://official-joke-api.appspot.com/random_joke")

response = Net::HTTP.get(url)

joke = JSON.parse(response)

puts joke
puts joke["setup"]
puts
puts joke["punchline"]