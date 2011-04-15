def get_factors num
  max_limit = Math.sqrt(num)
  factors_array = [1]
  for i in (2..max_limit)
    if num % i == 0
      factors_array.push(i)
      factors_array.push(num/i)
    end
  end
  factors_array.uniq!
  factors_array
end

def add_factors(num)
  counter = 0
  for i in get_factors(num)
    counter += i
  end
  return counter
end

def amicable_numbers(num1, num2)
  if add_factors(num1) == num2 && add_factors(num2) == num1
    return true
  else
    return false
  end
end


def amicable_number_sum
  amicable_array = Array.new
  for i in (1...10000)
    j = add_factors(i)
    if amicable_numbers(i,j) && i != j && j < 10000
      amicable_array.push(i)
      amicable_array.push(j)
    end
  end
  amicable_array.uniq!
  counter = 0
  for k in amicable_array
    if k
      counter += k
    end
  end
  return counter
end

puts amicable_number_sum