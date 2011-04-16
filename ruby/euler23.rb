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

def factors_sum num
  counter = 0
  for j in get_factors(num)
    counter += j
  end
  counter
end



def is_abundant num
  if num < 12
    return false
  end
  if factors_sum(num) > num
    return true
  else
    return false
  end
end



def sum_of_abundants num
  if num < 24
    return false
  end
  halfsies = num / 2
  for i in (1..halfsies)
    if is_abundant(i) && is_abundant(num-i)
      return true
    end
  end
  return false
end

sum = 0

for i in (1...28123)
  unless sum_of_abundants(i)
    puts i
    sum += i
  end
end

puts "sum: " + sum.to_s