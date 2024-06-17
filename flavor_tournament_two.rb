match_1 = ["vanilla", "chocolate"]
match_2 = ["rhubarb", "pistachio"]
match_3 = ["cookies and cream", "strawberry"]
match_4 = ["rocky road", "ube"]
first_semifinal = []
second_semifinal = []
final = []
winner = nil

def ask_for_winner(flavors)
  puts "0. " + flavors[0]
  puts "1. " + flavors[1]

  while true

    answer = gets.chomp.downcase
    if (answer == "0" || answer == "1")
      return flavors[answer.to_i]
    else
      puts "Please answer '0' or '1'."
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts
puts "MATCH 1: Which flavor is better?"
first_semifinal[0] = ask_for_winner(match_1)
puts
puts "MATCH 2: Which flavor is better?"
first_semifinal[1] = ask_for_winner(match_2)
puts
puts "MATCH 3: Which flavor is better?"
second_semifinal[0] = ask_for_winner(match_3)
puts
puts "MATCH 4: Which flavor is better?"
second_semifinal[1] = ask_for_winner(match_4)
puts
puts "SEMIFINAL - ROUND ONE: Which flavor is better?"
final[0] = ask_for_winner(first_semifinal)
puts
puts "SEMIFINAL - ROUND TWO: Which flavor is better?"
final[1] = ask_for_winner(second_semifinal)
puts "CHAMPIONSHIP MATCH"
puts "Which flavor is better?"
winner = ask_for_winner(final)
puts
print "And the Ultimate Flavor Champion is: "
puts winner.upcase + "!!!!!"

