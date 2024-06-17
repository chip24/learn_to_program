toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call("chocolate")
do_you_like.call("Ruby")

def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON!  I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts "Hello"
end

say_goodbye = Proc.new do
  puts "goodbye"
end

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)

def maybe_do(some_proc)
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do(some_proc)
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts "<wink>"
end

glance = Proc.new do
  puts "<glance>"
end

twice_do(wink)
twice_do(glance)
maybe_do(wink)
maybe_do(glance)

def do_until_false(first_input, some_proc)
  output = first_input

  while output
    input = output
    output = some_proc.call(input)
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false

  else
    array.pop
    array.push(last_number * last_number)
    array.push(last_number - 1 )
  end
end

p do_until_false([5], build_array_of_squares)

always_false = Proc.new do |just_ignore_me|
  false
end

yum = "lemonade with a hint of orange blossom water"
puts do_until_false(yum, always_false)

def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)





