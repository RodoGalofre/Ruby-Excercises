def factorial(n)
  fac = 1
  (1...n).to_a.inject{ |fac,i| fac *= i}
end

puts factorial(10)

 