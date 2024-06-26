Dir.chdir("/home/chip/repos/learn_to_program/mechanical_pencils")

pic_names = Dir["*.jpeg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading ##{pic_names.length} files:"

pic_number = 1

pic_names.each do |name|

  print "."
  new_name = if pic_number < 10
    "#{batch_name}_0#{pic_number}.jpg"
  else
    "#{batch_name}_#{pic_number}.jpg"
  end

  File.rename(name, new_name)
  pic_number = pic_number + 1
end

puts 
puts "Done!"
