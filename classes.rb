puts 42.class
puts "I'll have mayonnaise on mine!".class
puts Time.new.class
puts Time.class
puts String.class

class Integer
  def to_roman
    if self == 5
      roman = "V"
    else
      roman = "XLII"
    end
    roman
  end
  def double
    self *2
  end
  self
end

class Array
  def mult
    product = 1
    self.each do |elem|
      product *= elem
    end
    product
  end
end

class String
  def spongecase
    #word = ''
    word_arr = []
    self.each_char.with_index(1) do |letter, i|
      if i % 2 != 0
        word_arr << letter
      else
        word_arr << letter.upcase
      end
    end
    p word_arr
    word = word_arr.join('')
    puts word
    word
  end
end
    
      
   


   

puts 5.to_roman
puts 42.to_roman

puts [1,2,3,4,5].mult
puts [2,3,5].mult

puts 10.double

"chip".spongecase