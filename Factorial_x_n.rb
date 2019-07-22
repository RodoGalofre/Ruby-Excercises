def factorial?(n)
   
   factorial_Array = []
   factor = 1
   (1...n).each { |i| factorial_Array << factor *= i }
   return factorial_Array
end


puts factorial?(7)

