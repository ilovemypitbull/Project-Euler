def digit_length(number)
  return number.to_s.split("").size
end


def first_digit_length_fib(length)
  
  number = 1
  number_minus_2 = 1
  number_minus_1 = 1
  fib_counter = 2
  
  until digit_length(number) == length
    number = number_minus_1 + number_minus_2
    fib_counter +=1
    number_minus_2 = number_minus_1
    number_minus_1 = number
  end
  
  return fib_counter
  
end

puts first_digit_length_fib(1000)

