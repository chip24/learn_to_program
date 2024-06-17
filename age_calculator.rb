now = Time.new

puts "What year were you born?"
birth_year = gets.chomp.to_i
puts
puts "What month were you born?"
birth_month = gets.chomp.to_i
puts
puts "What day were you born?"
birth_day = gets.chomp.to_i
puts

birth_info = Time.new(birth_year, birth_month, birth_day)

puts now
puts birth_info

age = (now - birth_info) / 60 / 60 / 24 / 365.25
puts age
rounded_age = age.to_i
puts rounded_age

year = 0

until year == rounded_age
  print "\u{1f600} "
  year += 1
end
