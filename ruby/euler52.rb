def get_digits(num)
  digits_array = Array.new
  while num > 9
    digits_array.push(num % 10)
    num = num / 10
  end
  digits_array.push(num)
  digits_array.sort!
  digits_array
end

for i in (1..100000000000000000)
  if get_digits(i) == get_digits(2*i) && get_digits(i) == get_digits(3*i) && get_digits(i) == get_digits(4*i) && get_digits(i) == get_digits(5*i) && get_digits(i) == get_digits(6*i)
    puts i
    break
  end
end