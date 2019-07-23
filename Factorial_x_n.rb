def factorial(n)
   factorial_capture = []
   factor = 1
   (1...n).each { |i| factorial_capture << factor *= i }
   factorial_capture
end

puts factorial(7)