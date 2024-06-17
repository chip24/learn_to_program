question_arr = []

while true
  puts "Ask Grandma a question: "
  question = gets.chomp
  
  if question == "BYE"
    question_arr << question
    #p question_arr
    #puts question_arr.size
    puts "HUH?!"
    question_arr
    if question_arr.size == 3
    #p question_arr
    break
    end
  elsif question != "BYE" && question == question.upcase
      year = rand(1930..1950)
      puts "NO, NOT SINCE #{year}."
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end