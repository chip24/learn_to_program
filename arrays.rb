gems = ["Pearl", "Garnet", "Amethyst"]

puts gems
puts
puts gems[0]
puts gems[1]
puts gems[2]
puts gems[3]

languages = ["English", "Norwegian", "Ruby"]

languages.each do |lang|
  puts "I love #{lang}! Don't you?"
end

puts "And let's hear it for Fortran!"
puts "<crickets chirp in the distance>"

3.times do
  puts "Hip-Hip-Hooray!"
end

foods = ["artichoke", "brioche", "caramel"]

puts foods
puts
puts foods.to_s
puts 
puts foods.join(", ")
puts
puts foods.join(" :) ") + " 8)"

more_foods = ["artichoke", "brioche", "caramel", ["donuts", "eggs"]]

puts more_foods

favorites = []
favorites.push("raindrops on roses")
favorites.push("whiskers on kittens")

puts favorites[0]
puts favorites.last
puts favorites.length 

puts favorites.pop
puts favorites