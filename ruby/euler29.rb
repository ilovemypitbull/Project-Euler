def integer_comb(a,b)
  solutions_array = Array.new
  for i in (a..b)
    for j in (a..b)
      solutions_array.push(i**j)
    end
  end
  solutions_array.sort!
  solutions_array.uniq!
  solutions_array.length
end

puts integer_comb(2,100)
