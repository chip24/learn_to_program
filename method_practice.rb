def say_moo(number_of_moos)
  puts "moooooo...." * number_of_moos
  "yellow submarine"
end

say_moo(7)

def double_this(num)
  num_times_2 = num * 2
  puts "#{num} doubled is #{num_times_2}"
end

double_this(44)

tough_var = "You can't even touch my variable!"

def little_pest(tough_var)
  tough_var = nil
  puts "HAHA! I ruined your variable!"
end

little_pest(tough_var)
puts tough_var

def square(x)
  puts (x * x)
end

x = 5
square(x)

my_number = 5
square(my_number)

x = 10
my_number = x/2
square(my_number)
puts x

y = say_moo(3)
puts y.capitalize + ", dude..."
puts y

def favorite_food(name)
  if name == "Lister"
    return "vindaloo"
  end

  if name == "Rimmer"
    return "mashed potatoes"
  end

  "hard to say...maybe fried plantain"
end

def favorite_drink(name)
  if name == "Jean-Luc"
    "tea, Earl Grey, hot"
  elsif name == "Kathryn"
    "coffee, black"
  else
    "perhaps...horchata?"
  end

end

puts favorite_food("Rimmer")
puts favorite_food("Lister")
puts favorite_food("Cassandra")

puts favorite_drink("Kathryn")
puts favorite_drink("Q")
puts favorite_drink("Jean-Luc")