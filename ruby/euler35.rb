

def is_prime num
  max_limit = Math.sqrt(num)
  for i in (2..max_limit)
    if num % i == 0
      return false
    end
  end
  return true
end

def is_circular_prime num
  number_of_digits = num.to_s.size
  exp = number_of_digits - 1
  shift_array = Array.new
  number_of_digits.times do
    shift_array.push(num)
    num = (num % 10)*10**(exp) + num/10
  end
  for i in shift_array
    if is_prime(i) == false
      return false
    end
  end
  return true
end

solutions_array = Array.new
for i in (2..1000000)
  if is_circular_prime(i)
    solutions_array.push(i)
  end
end

puts solutions_array.size