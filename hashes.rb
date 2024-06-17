caps_array = []
caps_hash = {}

caps_array[0] = "Oslo"
caps_array[1] = "Paris"
caps_array[2] = "Madrid"
caps_array[3] = "Rome"
caps_hash["Norway"] = "Oslo"
caps_hash["France"] = "Paris"
caps_hash["Spain"] = "Madrid"
caps_hash["Italy"] = "Rome"

p caps_array
p caps_hash

caps_array.each do |city|
  puts city
end

caps_hash.each do |country, city|
  puts "#{country}: #{city}"
end

greetings = ["hello", "howdy", "hi"]
smoothies = {"mango" => "yum", "garlic" => "yuck"}

puts greetings
puts smoothies
puts smoothies["mango"]

weird_hash = Hash.new

weird_hash[12] = "monkeys"
weird_hash[[]] = "the void"
weird_hash[Time.new] = "no time like the present"

puts weird_hash

myself = {"name" => "Chris", "pairs_of_shoes" => 17}
imelda = {"name" => "Imelda", "pairs_of_shoes" => 3400}

people = [myself, imelda]

puts people
p people

numbers = 1..5
puts numbers 

puts([1,2,3,4,5] == numbers.to_a)

("a".."z").each do |letter|
  print letter
end

puts 
god_bless_the_nineties = 1990..1999
#puts god_bless_the_nineties
puts god_bless_the_nineties.min
puts god_bless_the_nineties.max

puts god_bless_the_nineties.include?(1999)
puts god_bless_the_nineties.include?(2000)
puts god_bless_the_nineties.include?(1994.5)

bosco = "Mr. T"
big_T = bosco[4]
puts big_T

puts "Hello. My name is Apollo."
puts "I'm extremely perceptive."
puts "What's your name?"

name = "Chip"
puts "Hi, #{name}."

if name[0] == "C"
  puts "You have excellent taste in footwear."
  puts "I can just tell."
end

prof = "We tore the universe a new space-hole, alright!"
puts prof[12, 8]
puts prof[12..19]
puts

def is_avi?(filename)
  filename.downcase[-4..-1] == ".avi"
end

puts is_avi?("DANCEMONKEYBOY.AVI")
puts is_avi?("toilet_paper_fiasco.jpg")

