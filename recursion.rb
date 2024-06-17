def factorial(n)
  product = 1

  while n > 0
    product = product * n
    puts product
    n = n - 1
  end

  product
end

puts factorial(8)

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n-1)
  end
end

puts factorial(8)

def fibonacci(n)
  if n <= 1
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(20)

def flatten(arr)
  flat = []
  arr.each do |elem|
    if elem.class == Array
      flat = flat + flatten(elem)
    else
      flat.push(elem)
    end
  end
  flat
end

a = [[2, 3], [4, [[5], 6]]]
b = [8, [[[[9]]]]]
arr = [[1, a], [7], b]
p arr
p flatten(arr)
