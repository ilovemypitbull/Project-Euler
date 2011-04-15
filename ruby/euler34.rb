def factorial(num)
  counter = 1
  for i in (2..num)
    counter *= i
  end
  counter
end

def get_digits(num)
  digits_array = Array.new
  while num > 9
    digits_array.push(num % 10)
    num = num/10
  end
  digits_array.push(num)
  digits_array.reverse!
end

def factorial_sum(num)
  counter = 0
  for i in get_digits(num)
    counter += factorial(i)
  end
  counter
end

def get_num_sum
  sum_array = Array.new
  for i in (3..1000000)
    if i == factorial_sum(i)
      puts i
      sum_array.push(i)
    end
  end
  counter = 0
  for j in sum_array
    counter += j
  end
  counter
end

puts get_num_sum