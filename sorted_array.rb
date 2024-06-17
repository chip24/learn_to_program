words = []
puts "Type as many words as you like.  Make sure to push 'Enter' after each word."
while true
  word = gets.chomp
  break if word.empty?
  words << word
  
end

puts "Your words are: #{words}."
puts "Your sorted words are #{words.sort}"
