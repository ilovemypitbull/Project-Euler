def get_series_total
  total = 0
  for i in (1..1000)
    total += i**i
  end
  return total
end

puts get_series_total % 10000000000
