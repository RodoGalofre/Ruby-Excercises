def square_diferences(rango)
  mayorsq, mayorsqs = [],[]
  square_of_the_sum = 0
  sum_square = 0
  diference = 0
  (1..rango).each do |i| 
    sum_square += i**2
    mayorsq << sum_square
    (square_of_the_sum += i)**2
    mayorsqs << square_of_the_sum**2
  end
    mayorsqs.max - mayorsq.max 
end
   
puts square_diferences(10)