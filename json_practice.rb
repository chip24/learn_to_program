require "json"

test_array = ["Give Quiche a Chance",
  "Mutants Out!",
  "Chameleonic Life-Forms, No Thanks"]
  
test_string = test_array.to_json

filename = "RimmerTShirts.txt"

File.open(filename, "w") do |f|
  f.write(test_string)
end

read_string = File.read(filename)

read_array = JSON.parse(read_string)
puts "test_string = #{test_string}"
puts "read_string = #{read_string}"
puts "read_array = #{read_array}"
puts(read_string == test_string)
puts(read_array == test_array)
