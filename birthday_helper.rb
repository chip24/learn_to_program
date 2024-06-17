#require "csv"
require "date"

filename = "birthdays.txt"


bday_list = File.read(filename)
#p bday_list
  
h = Hash[bday_list.each_line.map { |line| line.chomp.split(',', 2)}]
#p h
print "Enter the celebrity's name: "
name = gets.chomp#

#puts name
#p h[name]

#puts h[name]

now = Time.now.utc.to_date
#puts now

dob_arr =[]
h[name].split(' ').each do |e|
  dob_arr << e
end
#p dob_arr
month_int = Date::ABBR_MONTHNAMES.index(dob_arr[0])
day_int = dob_arr[1].to_i
year_int = dob_arr[2].to_i

#puts month_int
#puts day_int
#puts year_int

celeb_date = Date.new(year_int, month_int, day_int)

#puts celeb_date

age =  ((now - celeb_date)/365.25).to_i
#puts age

puts "#{name} was born on #{h[name]}. He is #{age} years old."

puts "#{name} was born on #{celeb_date} and is #{age} years old."









