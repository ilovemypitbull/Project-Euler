def get_digits(i)
  digits_array = Array.new
  while i > 9
    digits_array.push(i % 10)
    i = i/10
  end
  digits_array.push(i)
  counter = 0
  for j in digits_array
    counter += j
  end
  digits_array.reverse!
end

def get_digits_powered(i)
  counter = 0
  for j in get_digits(i)
    counter += (j**5)
  end
  counter 
end

def get_solution
  solutions_array = Array.new
  max_limit = ((9**5)*5)
  for i in (2..max_limit)
    if i == get_digits_powered(i)
      solutions_array.push(i)
    end
  end
  counter = 0
  for k in solutions_array
    counter += k
  end
  counter
end

puts get_solution