
def int_to_roman(num)
  roman_array =[]
  if num > 3000 || num < 1
    puts "Your number must between 1 and 3,000."
    #break
  end
  while num >= 1
    if num - 1000 >= 0
      roman_array << "M"
      num -= 1000 
      #puts "Number after subtracting 1000 is #{num}"
    elsif num - 500 >= 0
      roman_array << "D"
      num -= 500
      #puts "Number after subtracting 500 is #{num}"
    elsif num - 100 >= 0
      roman_array << "C"
      num -= 100
      #puts "Number after subtracting 100 is #{num}"
    elsif num - 50 >= 0
      roman_array << "L"
      num -= 50
      #puts "Number after subtracting 50 is #{num}"
    elsif num - 10 >= 0
      roman_array << "X"
      num -= 10
      #puts "Number after subtracting 10 is #{num}"
    elsif num - 5 >= 0
      roman_array << "V"
      num -= 5
      #puts "Number after subtracting 5 is #{num}"
    else #num - 1 >= 1
      num -= 1
      roman_array << "I"
      #puts "Number after subtracting 1 is #{num}"
    end
  end
  p roman_array
  puts roman_array.join

end

#int_to_roman(2999)
#int_to_roman(3000)
#int_to_roman(1)
#int_to_roman(6)
#int_to_roman(12)
#int_to_roman(23)
#int_to_roman(37)
#int_to_roman(48)
int_to_roman(29)
#int_to_roman(50)


