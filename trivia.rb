require "net/http"
require "json"
require "cgi"

num_of_qs = 2.to_s
puts num_of_qs
pre_url = "https://opentdb.com/api.php?amount="
url = URI("https://opentdb.com/api.php?amount=#{num_of_qs}")
puts url


#string_url = url.to_s
#q_amt = string_url[-1] #number of questions requested from database
#puts q_amt

#on 6-2-2024 figure out how to run the questions in a loop76


response = Net::HTTP.get(url)
trivia = JSON.parse(response)

puts (trivia["results"][0]["correct_answer"]).encoding

#puts trivia

points = 0

puts "Welcome to TRIVIA.  Here is your first question.  The category is #{trivia["results"][0]["category"]}."
unescaped_question = CGI::unescapeHTML(trivia["results"][0]["question"])
puts "QUESTION: #{unescaped_question}"
#puts "QUESTION: #{trivia["results"][0]["question"].gsub("&quot;","'")}"
answer_arr =[]
answer_arr << trivia["results"][0]["correct_answer"]
trivia["results"][0]["incorrect_answers"].each do |item|
  answer_arr << item
end
p answer_arr
shuffled_arr = answer_arr.shuffle
puts "Your choices are:\n 1. #{shuffled_arr[0]}\n 2. #{shuffled_arr[1]}\n 3. #{shuffled_arr[2]}\n 4. #{shuffled_arr[3]}"
#puts trivia[]

print "Type the number of the correct answer: "
num_answer = gets.chomp
puts num_answer
answer = shuffled_arr[(num_answer.to_i-1)]
puts answer

if answer == trivia["results"][0]["correct_answer"]
  puts "You're CORRECT! You've won 10 points."
  points += 10
else
  puts "Sorry.  The correct answer was #{trivia["results"][0]["correct_answer"]}."
end

puts "You currently have #{points} points."

