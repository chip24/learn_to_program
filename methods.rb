puts("hello ".+("world"))
puts ((10.*(9)).+(9))

puts self

var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP - A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts "Did you know there were #{var1.length} characters in #{var1}?"

letters = "aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts " a".capitalize
puts letters

line_width = 50
puts (              "Old Mother Hubbard".center(line_width))

line_width = 40
str = "==> text <=="
puts str.ljust(line_width)
puts str.center(line_width)
puts str.rjust(line_width)
puts str.ljust(line_width/2) + str.rjust(line_width/2)

puts 5 ** 2
puts 5 ** 0.5
puts 7/3
puts 7 % 3
puts 365%7

puts 365.0 % 7.0

puts (5-2).abs
puts (2-5).abs

puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)
puts rand(9999999999999999999999999999999999)

srand 1976
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)
puts ""
srand 1976
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(100)

puts srand
puts rand

puts Math::PI
puts Math::E
puts Math.cos(Math::PI/3)
puts Math.tan(Math::PI/4)
puts Math.log(Math::E**2)
puts ((1 + Math.sqrt(5))/2)
