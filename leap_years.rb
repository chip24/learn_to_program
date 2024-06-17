puts "Enter a starting year: "
start_year = gets.chomp.to_i
puts "Enter an ending year: "
end_year = gets.chomp.to_i
#start_year = 1900
#end_year = 2000


leap_years = []

while (end_year - start_year) >= 0
  #puts "The current end year is #{end_year}"
  if end_year % 4 == 0 && end_year % 100 != 0
    leap_years << end_year
  end
  if end_year % 400 == 0
    leap_years << end_year
  end
end_year -= 1
end

p leap_years
p leap_years.reverse
