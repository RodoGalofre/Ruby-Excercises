def factorial(n)
   factorial_capture = []
   factor = 1
   (1...n).each { |i| factorial_capture << factor *= i }
   return factorial_capture
end

puts factorial(7)