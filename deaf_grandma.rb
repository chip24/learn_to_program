#puts "Ask Grandma and question:"
#message = gets.chomp



while true
  puts "Ask Grandma a question: "
  question = gets.chomp
  if question == "BYE"
    break
  elsif question == question.upcase
    year = rand(1930..1950)
    puts "NO, NOT SINCE #{year}."
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
