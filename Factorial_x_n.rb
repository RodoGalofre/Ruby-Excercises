def factorial(n)
  (1..n).inject(1){ |fac,i| fac * i}
end

puts factorial(7)

 