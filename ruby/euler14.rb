def collatz_chain(number)
  counter = 1
  while number != 1
    if number % 2 == 0
      number = number / 2
      counter += 1
    else
      number = 3 * number + 1
      counter += 1
    end
  end
  return counter
end



def biggest_collatz_chain
  max_collatz = 1
  max_number = 1
  for i in (1...1000000)
    if collatz_chain(i) > max_collatz
      max_collatz = collatz_chain(i)
      max_number = i
    end
  end
  return max_number
end

puts biggest_collatz_chain