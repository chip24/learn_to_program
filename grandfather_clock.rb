def bong(&block)
  now = Time.new.hour
  puts now
  midnight = 0
  hours = now - midnight
  puts hours
  hours.times do
    block.call
  end
end

# 6-11 figure out how to pass hours to block
bong do
  puts "BONG!"
end

