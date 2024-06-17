alpha = Array.new + [12345]
beta = String.new + "hello"
karma = Time.new

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

time = Time.new
soon = time + 60

puts time
puts soon

puts Time.new(2000,1,1)
puts Time.new(1976, 8,3,13,31)

puts Time.utc(1955, 11, 5)

puts soon - time

birth = Time.new(1974, 6, 29)
puts birth

billion_seconds_old = birth + 1_000_000_000

puts billion_seconds_old
