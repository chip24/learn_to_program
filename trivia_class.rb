require "net/http"
require "json"
require "cgi"

class Trivia

  def initialize(num_of_qs)
    @num_of_qs = num_of_qs
    @points = 0
  end

  def get_trivia
    num_of_qs = @num_of_qs.to_s
    puts num_of_qs
    pre_url = "https://opentdb.com/api.php?amount="
    url = URI("https://opentdb.com/api.php?amount=#{num_of_qs}")
    #puts url

    response = Net::HTTP.get(url)
    @trivia = JSON.parse(response)
    #p @trivia
  end

  def play_game
    
    num = 0
      #puts (trivia["results"][num]["correct_answer"]).encoding
    puts "Welcome to TRIVIA!"
    while num < @num_of_qs
      puts "Here is question number #{num + 1}."  
      puts "The category is #{@trivia["results"][num]["category"]}."
      unescaped_question = CGI::unescapeHTML(@trivia["results"][num]["question"])
      puts "QUESTION: #{unescaped_question}"
#puts "QUESTION: #{trivia["results"][0]["question"].gsub("&quot;","'")}"
      answer_arr =[]
      answer_arr << @trivia["results"][num]["correct_answer"]
      @trivia["results"][num]["incorrect_answers"].each do |item|
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

      if answer == @trivia["results"][num]["correct_answer"]
        puts "You're CORRECT! You've won 10 points."
        @points += 10
      else
        puts "Sorry.  The correct answer was #{@trivia["results"][num]["correct_answer"]}."
      end

    puts "You currently have #{@points} points."
    num += 1
    end
  end

end


puts "Welcome to TRIVIA!"
puts "How many questions would you like to answer?  Enter a number between 1 and 10."
print "Number of questions: "
q_amt = gets.chomp.to_i

if q_amt < 1 || q_amt > 10
  puts "Try again. Enter a number between one and ten."
end

game = Trivia.new(q_amt)
game.get_trivia
game.play_game
