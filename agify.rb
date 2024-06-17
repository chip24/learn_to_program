require "net/http"
require "json"

#apikey = "7ea07d4"
request = "https://api.agify.io?name="

#request = "http://www.omdbapi.com/?i=tt3896198&apikey=7ea07d4"
puts "Enter your name and we will guess your age."
print "Name:  "
name = "CHIP"
url = URI(request + "#{name.downcase}")
puts url
#url = URI(request)

search_hash = JSON.parse(Net::HTTP.get(url))
p search_hash

puts "If your name is #{search_hash["name"].capitalize}, you are likely around #{search_hash["age"]} years old."


